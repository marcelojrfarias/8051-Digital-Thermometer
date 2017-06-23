#include <8051.h>

#define BTN_0 P1_4
#define BTN_1 P1_5
#define BTN_2 P1_6
#define BTN_3 P1_7

#define TOOGLE
#define PUSH

typedef struct Button{
  __sfr* reg;
  unsigned int debounce;
  int type;
} Button;

Button btn0 = {P1_4, 0, PUSH};

int status = 0;
