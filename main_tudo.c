#include <8051.h>

#define sw1 P1_7
#define sw2 P1_6
#define sw3 P1_5
#define LED1 P1_4
#define LED2 P1_3
#define LED3 P1_2
#define LED4 P1_1
#define LED5 P1_0

#define	dados_7seg 0xFFC0//isso deve ser passado pelo usuario
#define select_display 0xFFC1//isso de ser passado pelo usuario

//static char far at dados_7seg dados; // variavel dados aponta para dados_7seg, far at sao palavras reservadas do compilador
//static char far at select_display display;

//static __code unsigned char  alg[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
//static __code unsigned char  disp[] = {0x01, 0x02, 0x04, 0x08};

int LastStatesw1 = 0;
int LastStatesw2 = 0;

void delay(int x){
	int j;
	while(x-- > 0) for (j = 0; j < 255; j++);
}
/*
void Display(int n, int x){//n para qual display e x para
  display = disp[n];
  dados = alg[x];
}*/

void main(void){
	int i;
//	sw1 = 0;
	LED5 = 0;
	LED4 = 0;
	LED3 = 1;
	delay(2000);
	/*for (i = 0; i < 3; i++){
		dados = alg[8];
		delay(500);
		dados = alg[0];
		delay(500);
	}*/

	while(1){
	//----------------------------Aunmento de temperatura-----------------------------------------
		if (!sw1 && !LastStatesw1){
			delay(2000);
			if(!sw1){
				LED5 = 1;
				LED3 = 1;
				LastStatesw1 = 1;
			}
		}
		else if(sw1){
			LED5 = 0;
			LED3 = 1;
			LastStatesw1 = 0;
		}
//------------------------------------------------------------------------------------------------
//----------------------------Diminuicao da temperatura-------------------------------------------
		else if (!sw2 && !LastStatesw2){
			delay(2000);
			if(!sw2){
				LED4 = 1;
				LED3 = 1;
				LastStatesw2 = 1;
			}
		}
		else if (sw2){
			LED4 = 0;
			LED3 = 1;
			LastStatesw2 = 0;
		}
		else{
			LED3 = 0;
		}
	}
//--------------------------------------------------------------------------------------------------
//
}
