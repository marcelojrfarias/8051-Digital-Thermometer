/*----------------------------------------------------------------------*
 * Arduino Button Library v1.0                                          *
 * Jack Christensen May 2011, published Mar 2012                        *
 *                                                                      *
 * Library for reading momentary contact switches like tactile button   *
 * switches. Intended for use in state machine constructs.              *
 * Use the read() function to read all buttons in the main loop,        *
 * which should execute as fast as possible.                            *
 *                                                                      *
 * This work is licensed under the Creative Commons Attribution-        *
 * ShareAlike 3.0 Unported License. To view a copy of this license,     *
 * visit http://creativecommons.org/licenses/by-sa/3.0/ or send a       *
 * letter to Creative Commons, 171 Second Street, Suite 300,            *
 * San Francisco, California, 94105, USA.                               *
 *----------------------------------------------------------------------*/

#include "Button.h"

/*----------------------------------------------------------------------*
 * Button(pin, puEnable, invert, dbTime) instantiates a button object.  *
 * pin      Is the Arduino pin the button is connected to.              *
 * puEnable Enables the AVR internal pullup resistor if != 0 (can also  *
 *          use true or false).                                         *
 * invert   If invert == 0, interprets a high state as pressed, low as  *
 *          released. If invert != 0, interprets a high state as        *
 *          released, low as pressed  (can also use true or false).     *
 * dbTime   Is the debounce time in milliseconds.                       *
 *                                                                      *
 * (Note that invert cannot be implied from puEnable since an external  *
 *  pullup could be used.)                                              *
 *----------------------------------------------------------------------*/
setup(struct Button* btn, unsigned char pin, unsigned char puEnable, unsigned char invert, unsigned int dbTime) {
    btn->pin = pin;
    btn->puEnable = puEnable;
    btn->invert = invert;
    btn->dbTime = dbTime;
    if (btn->puEnable != 0)
        pinMode(btn->pin, INPUT_PULLUP);    //enable pullup resistor
    else
        pinMode(btn->pin, INPUT);
    btn->state = digitalRead(btn->pin);
    if (btn->invert != 0) btn->state = !btn->state;
    btn->time = millis();
    btn->lastState = btn->state;
    btn->changed = 0;
    btn->lastChange = btn->time;
}

/*----------------------------------------------------------------------*
 * read() returns the state of the button, 1==pressed, 0==released,     *
 * does debouncing, captures and maintains times, previous states, etc. *
 *----------------------------------------------------------------------*/
unsigned char read(struct Button* btn) {
    static unsigned int ms;
    static unsigned char pinVal;

    ms = millis();
    pinVal = digitalRead(_pin);
    if (btn->invert != 0) pinVal = !pinVal;
    if (ms - btn->lastChange < btn->dbTime) {
        btn->time = ms;
        btn->changed = 0;
        return btn->state;
    }
    else {
        btn->lastState = btn->state;
        btn->state = pinVal;
        btn->time = ms;
        if (btn->state != btn->lastState)   {
            btn->lastChange = ms;
            btn->changed = 1;
        }
        else {
            btn->changed = 0;
        }
        return btn->state;
    }
}

/*----------------------------------------------------------------------*
 * isPressed() and isReleased() check the button state when it was last *
 * read, and return false (0) or true (!=0) accordingly.                *
 * These functions do not cause the button to be read.                  *
 *----------------------------------------------------------------------*/
unsigned char isPressed(struct Button* btn) {
    return btn->state == 0 ? 0 : 1;
}

unsigned char isReleased(struct Button* btn) {
    return btn->state == 0 ? 1 : 0;
}

/*----------------------------------------------------------------------*
 * wasPressed() and wasReleased() check the button state to see if it   *
 * changed between the last two reads and return false (0) or           *
 * true (!=0) accordingly.                                              *
 * These functions do not cause the button to be read.                  *
 *----------------------------------------------------------------------*/
unsigned char wasPressed(struct Button* btn) {
    return btn->state && btn->changed;
}

unsigned char wasReleased(struct Button* btn) {
    return !btn->state && btn->changed;
}

/*----------------------------------------------------------------------*
 * pressedFor(ms) and releasedFor(ms) check to see if the button is     *
 * pressed (or released), and has been in that state for the specified  *
 * time in milliseconds. Returns false (0) or true (1) accordingly.     *
 * These functions do not cause the button to be read.                  *
 *----------------------------------------------------------------------*/
unsigned char pressedFor(struct Button* btn, unsigned int ms) {
    return (btn->state == 1 && btn->time - btn->lastChange >= ms) ? 1 : 0;
}

unsigned char releasedFor(struct Button* btn, unsigned int ms) {
    return (btn->state == 0 && btn->time - btn->lastChange >= ms) ? 1 : 0;
}

/*----------------------------------------------------------------------*
 * lastChange() returns the time the button last changed state,         *
 * in milliseconds.                                                     *
 *----------------------------------------------------------------------*/
unsigned int lastChange(struct Button* btn) {
    return btn->lastChange;
}
