#include <8051.h>

#define	dados_7seg 0xFFC0//isso deve ser passado pelo usuario
#define select_display 0xFFC1//isso de ser passado pelo usuario

static char far at dados_7seg dados; // variavel dados aponta para dados_7seg, far at sao palavras reservadas do compilador
static char far at select_display display;

static __code unsigned char  alg[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
static __code unsigned char  disp[] = {0x01, 0x02, 0x04, 0x08};

void Display(int n, int x){//n para qual display e x para
  //
}

void setDisplay(endeco disp, endereco select){
  
}
