//Rascunho para organizar o pensamento
//Depois separa tudo em um header

#include <8051.h>
#define	dados_7seg 0xFFC0
#define select_display 0xFFC1
#define sw1 P3_4
#define inc P3_x
#define dec P3_y


static char far at dados_7seg dados; // variavel dados aponta para dados_7seg, far at sao palavras reservadas do compilador
int sw4State;
static char far at select_display display;
static __code unsigned char  alg[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
static __code unsigned char  disp[] = {0x01, 0x02, 0x04, 0x08};
int temp = 36;
int scale = 0;
int temp_scale = 0;

int C_to_F(int c){
  return (5*c/9) + 32;
}

void Mostra_Temp(int T, int scale){
  int i = 4
  if (!scale){//celsius
    display = disp[i];
    dados = alg[11];//C e 12
    while (T/10){
      display = disp[--i];
      dados = alg[T%10];
      T = T/10;
    }
  }
}

void main(void){
  while(1){
//*******************************Escolha da Escala*************************************************
    if (!sw1 && !scale){//escala celsius, aperta botao e scale = 0;
      scale = 1;//muda o valor da varialvel para manter a escolha da temperatura
      temp_scale = temp;
      //nao se preocupe marcelo e so um rascunho, vai ficar tudo numa linha so hahaha
    }
    else-if (!sw1 && scale){//escala fahrenheit, aperta botao e scale = 1;
      scale = 0;//muda o valor da varialvel para manter a escolha da temperatura
      //nao se preocupe marcelo e so um rascunho, vai ficar tudo numa linha so hahaha
    }
//*************************************************************************************************

//*********************Leitura da Temperatura******************************************************
    if (!inc){//verifica se o botao de aumentar temperatura esta pressionado
      temp++;//aumente a temperatura em um grau celsius
    }
    else-if(!dec){//verifica se o botao de diminuir temperatura esta pressionado
      temp--;//aumente a temperatura em um grau celsius
    }
//*************************************************************************************************

//*********************Calculo*********************************************************************
    if (scale) temp_scale = C_to_F(temp);
    Mostra_Temp(temp_scale);
//*************************************************************************************************
  }
}
