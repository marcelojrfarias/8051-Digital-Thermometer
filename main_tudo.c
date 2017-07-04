#include <8051.h>

#define sw1 P1_7
#define sw2 P1_6
#define sw3 P1_5

#define C 1
#define F 0

#define	dados_7seg 0xFFC0  //isso deve ser passado pelo usuario
#define select_display 0xFFC1  //isso de ser passado pelo usuario

static char far at dados_7seg dados; // variavel dados aponta para dados_7seg, far at sao palavras reservadas do compilador
static char far at select_display display;

static __code unsigned char  alg[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
static __code unsigned char  disp[] = {0x01, 0x02, 0x04, 0x08};

int lastsw1;
int lastsw2;
int lastsw3;

unsigned int tempC;
unsigned int tempF;

bit unit;

void delay(int x) {
	int j;
	while(x-- > 0) for (j = 0; j < 255; j++);
}

void Display(int n, int x) {//n para qual display e x para
  display = disp[n];
  dados = alg[x];
}

void printTemp() {

	int temp = unit == C ? tempC : tempF;
	
	Display(0, temp/100);
	delay(2);
	Display(1, temp%100/10);
	delay(2);
	Display(2, temp%10);
	delay(2);
	
	if (unit == C)
		Display(3, 12);
	else
		Display(3, 15);
		
	delay(2);
}

int toFahrenheit(int temp) {
	return temp * 18 / 10 + 32;
}

int toCelsius(int temp) {
	return (temp - 32) * 10 / 18;
}

void main(void) {

	lastsw1 = 0;
	lastsw2 = 0;
	lastsw3 = 0;

	unit = C;
	tempC = 25;
	tempF = toFahrenheit(tempC);

	while(1) {
	
		printTemp();
		
		if (sw1 != lastsw1) {
			lastsw1 = sw1;
			if (!sw1) {
					
				if (unit == C) {
					tempC = tempC < 537 ? tempC + 1 : 537;
					tempF = toFahrenheit(tempC);
				}
				if (unit == F) {
					tempF = tempF < 999 ? tempF + 1 : 999;
					tempC = toCelsius(tempF);
				}
			}
			
		} 

		
		if (sw2 != lastsw2) {
		
			lastsw2 = sw2;
			
			if (!sw2) {
			
				if (unit == C) {
					tempC = tempC > 0 ? tempC - 1 : 0;
					tempF = toFahrenheit(tempC);
				}
				if (unit == F) {
					tempF = tempF > 32 ? tempF - 1 : 32;
					tempC = toCelsius(tempF);
				}
			}		
		
		}
	
		
		if (sw3 != lastsw3) {
	
			lastsw3 = sw3;
			
			if (!sw3) {
				unit = !unit; 
			}
		
		}
		
	}

//
}
