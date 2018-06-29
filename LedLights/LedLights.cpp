/*
 * LedLights.ino
 *
 *  Created on: Jun 29, 2018
 *      Author: dvorski
 */

// Do not remove the include below
#include "Arduino.h"
#include "LedLights.h"

//pins
const int ledPwmPin1 = 3;			//the pin that is used to dim the light #1
const int ledPwmPin2 = 5;			//the pin that is used to dim the light #2
const int ledPwmPin3 = 6;			//the pin that is used to dim the light #3
const int boardLed = 13;			//on-board led

//runtime variables
bool lightTurnedOn = false;				//is the light currently turned on
int turnOnDelay = 7;					//number of milliseconds to step up the PWM by one
int turnOnShift = 100;
int turnOffDelay = 10;					//number of milliseconds to step down the PWM by one

void setup()
{
	pinMode(ledPwmPin1,OUTPUT);
	pinMode(ledPwmPin2,OUTPUT);
	pinMode(ledPwmPin3,OUTPUT);
	pinMode(boardLed,OUTPUT);
	analogWrite(ledPwmPin1,255);
	analogWrite(ledPwmPin2,255);
	analogWrite(ledPwmPin3,255);
}

void loop()
{
	TurnOnType t = TurnOnType(rand()%3);
	turnOnTheLight(t);
	delay(10000);
	turnOffTheLight();
	delay(10000);
}

void turnOnTheLight(TurnOnType t)
{
	if(!lightTurnedOn){
		switch (t) {
			case gradual_constant:
				analogWrite(ledPwmPin1, 255);
				analogWrite(ledPwmPin2, 255);
				analogWrite(ledPwmPin3, 255);
				break;

			case gradual_dynamic:
				analogWrite(ledPwmPin1, 255);
				analogWrite(ledPwmPin2, 255);
				analogWrite(ledPwmPin3, 255);
				break;

			case instant:
				analogWrite(ledPwmPin1, 255);
				analogWrite(ledPwmPin2, 255);
				analogWrite(ledPwmPin3, 255);
				break;

			default:
				break;
		}
		lightTurnedOn = true;
	}
}

void turnOffTheLight()
{
	if(lightTurnedOn){
		for(int i=0; i <= 255; i++){
			if(i>=0 && i<=255){
				analogWrite(ledPwmPin1,i);
				analogWrite(ledPwmPin2,i);
				analogWrite(ledPwmPin3,i);
			}
			delay(turnOffDelay);
		}
	}
	lightTurnedOn = false;
	digitalWrite(boardLed,LOW);
}
