#include <8051.h>	//inclusao da biblioteca

#define sw1 P1_7	//Incrementa a temperatura em um grau
#define sw2 P1_6	//Decrementa a temperatura em um grau
#define sw3 P1_5	//Troca a escala do temometro F->C ou C->F

#define C 1	//Simplificação para indicar que a escala Celsius é representada por um
#define F 0	//Simplificação para indicar que a escala Fahrenheit é representada por zero

#define	dados_7seg 0xFFC0  //Endereço para escrever os dados no display de sete segmentos
#define select_display 0xFFC1  //Endereço para selecionar qual o display vai receber os dados

static char far at dados_7seg dados; //Váriavel dados aponta para dados_7seg
static char far at select_display display;	//Váriavel display aponta para dados_7seg

static __code unsigned char  alg[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};	//Vetor com os endereços para escrever os números no display de sete segmentos
static __code unsigned char  disp[] = {0x01, 0x02, 0x04, 0x08};	//Vetor com os endereços para selecionar o display de sete segmentos

int lastsw1;	//Váriavel para armazenar o último estado da chave sw1
int lastsw2;	//Váriavel para armazenar o último estado da chave sw2
int lastsw3;	//Váriavel para armazenar o último estado da chave sw3

unsigned int tempC;	//Contador da temperatura em Celsius
unsigned int tempF;	//Contador da temperatura em Fahrenheit

bit unit;	//Flag que armazena qual escala esta sendo utilizada

//Rotina de delay
void delay(int x) {
	int j;
	while(x-- > 0) for (j = 0; j < 255; j++);
}

//Rotina para selecionar o display de sete segmentos e escrver dados nele
void Display(int n, int x) {//n = display, x = numero a ser escrito
  display = disp[n];
  dados = alg[x];
}

//Rotina para realizar os calculos necesarrios para escrever os algarismos corretamente em cada display
void printTemp() {

	int temp = unit == C ? tempC : tempF;	//Seleciona qual valor de temperatura será usado

	Display(0, temp/100);	//Escreve no primeiro display(o mais a esquerda) a centena do valor da temepratura
	delay(2);	//Delay para manter o display aceso por um tempo
	Display(1, temp%100/10);	//Escreve no diplay seguinte a dezena do valor da temperatura
	delay(2);	//Delay para manter o display aceso por um tempo
	Display(2, temp%10);	//Escreve no diplay seguinte a unidade do valor da temperatura
	delay(2);	//Delay para manter o display aceso por um tempo

	if (unit == C)
		Display(3, 12);	//Escreve no último display(o mais a direita) o simbolo da escala utilizada, no caso C
	else
		Display(3, 15);	//Escreve no último display(o mais a direita) o simbolo da escala utilizada, no caso F

	delay(2);	//Delay para manter o display aceso por um tempo
}

//Rotina de conveção de Celsius para Fahrenheit
int toFahrenheit(int temp) {
	return temp * 18 / 10 + 32;
}

//Rotina de converção de Fahrenheit para Celsius
int toCelsius(int temp) {
	return (temp - 32) * 10 / 18;
}

//Programa principal
void main(void) {

	lastsw1 = 0;	//inicialização da variável lastsw1
	lastsw2 = 0;	//inicialização da variável lastsw2
	lastsw3 = 0;	//inicialização da variável lastsw3

	unit = C;	//A escala padrão é Celsius
	tempC = 25;	//Para efeito de simulação escolhemos começar com a temperatura de 25C
	tempF = toFahrenheit(tempC);	//Converte a temperatura de 25C para seu equivalente em Fahrenheit, mantendo a coesão

	while(1) {

		printTemp();

		if (sw1 != lastsw1) {	//Verifica se o estado de sw1 mudou
			lastsw1 = sw1;	//Armazena o último estado de sw1
			if (!sw1) {	//Verifica se o botão sw1 continua prescionado

				if (unit == C) {	//Verifica se a escala é Celsius
					tempC = tempC < 537 ? tempC + 1 : 537;	//Verifica se o contador para grau Celsius não estorou o limete maximo de 999 Fahrenheit(convertido para Celsius), caso não tenha incrementa um nele
					tempF = toFahrenheit(tempC);	//Converte a temperatura em Celsius para Fahrenheit e armazena no contador para Farenheit, mantendo a coesão do código
				}
				if (unit == F) {	//Verifica se a escala é Fahrenheit
					tempF = tempF < 999 ? tempF + 1 : 999;	//Verifica se o contador para grau Fahrenheit não estorou o limete maximo de 999 Fahrenheit, caso não tenha incrementa um nele
					tempC = toCelsius(tempF);	//Converte a temperatura em Fahrenheit para Celsius e armazena no contador para Celsius, mantendo a coesão do código
				}
			}

		}


		if (sw2 != lastsw2) {	//Verifica se o estado de sw2 mudou
			lastsw2 = sw2;	//Armazena o último estado de sw2
			if (!sw2) {	//Verifica se o botão sw2 continua prescionado

				if (unit == C) {	//Verifica se a escala é Celsius
					tempC = tempC > 0 ? tempC - 1 : 0;	//Verifica se o contador para grau Celsius não estorou o limete mínimo de 0 Celsius, caso não tenha decrementa um nele
					tempF = toFahrenheit(tempC);	//Converte a temperatura em Celsius para Fahrenheit e armazena no contador para Farenheit, mantendo a coesão do código
				}
				if (unit == F) {	//Verifica se a escala é Fahrenheit
					tempF = tempF > 32 ? tempF - 1 : 32;	//Verifica se o contador para grau Fahrenheit não estorou o limete mínimo de 32 Fahrenheit(0 convertido para Celsius), caso não tenha decrementa um nele
					tempC = toCelsius(tempF);	//Converte a temperatura em Fahrenheit para Celsius e armazena no contador para Celsius, mantendo a coesão do código
				}
			}

		}


		if (sw3 != lastsw3) {	//Verifica se o estado de sw3 mudou
			lastsw3 = sw3;	//Armazena o último estado de sw3
			if (!sw3) {	//Verifica se o botão sw3 continua prescionado
				unit = !unit; //Inverte o estado do flag
			}

		}

	}
}
