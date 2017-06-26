#ifndef __Button_h__
#define __Button_h__

#include <8051.h>

typedef struct Button{
  unsigned char _pin;           //microcontroller pin number
  unsigned char _puEnable;      //internal pullup resistor enabled
  unsigned char _invert;        //if 0, interpret high state as pressed, else interpret low state as pressed
  unsigned char _state;         //current button state
  unsigned char _lastState;     //previous button state
  unsigned char _changed;       //state changed since last read
  unsigned int  _time;         //time of current state (all times are in ms)
  unsigned int  _lastChange;   //time of last state change
  unsigned int  _dbTime;       //debounce time
} Button;

// Prototypes
extern unsigned char read(struct Button* btn);
extern unsigned char isPressed(struct Button* btn);
extern unsigned char isReleased(struct Button* btn);
extern unsigned char wasPressed(struct Button* btn);
extern unsigned char wasReleased(struct Button* btn);
extern unsigned char pressedFor(struct Button* btn, unsigned int  ms);
extern unsigned char releasedFor(struct Button* btn, unsigned int  ms);
extern unsigned int  lastChange(struct Button* btn);

#endif
