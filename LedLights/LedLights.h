// Only modify this file to include
// - function definitions (prototypes)
// - include files
// - extern variable definitions
// In the appropriate section

#ifndef _LedLights_H_
#define _LedLights_H_
#include "Arduino.h"
//add your includes for the project Led here


//end of add your includes here


enum TurnOnType {
	gradual_constant,
	gradual_dynamic,
	instant
};

//add your function definitions for the project Led here
void setup();
void loop();
void turnOnTheLight(TurnOnType t);
void turnOffTheLight();

//Do not add code below this line
#endif /* _LedLights_H_ */
