// Do not remove the include below
#include "LedLights.h"

//pins
const int ledPwmPin1 = 3;			//the pin that is used to dim the light #1
const int ledPwmPin2 = 5;			//the pin that is used to dim the light #2
const int ledPwmPin3 = 6;			//the pin that is used to dim the light #3
const int pirInPin1 = 2;			//Passive Infrared Sensor - motion detector #1
const int boardLed = 13;			//onboard led
const int photoResistorPin = A0;	//pin that reads the photoresistor

//runtime vars
int pirVal1;							//the value of PIR sensor
bool lightTurnedOn = false;				//is the light currently turned on
int turnOnDelay = 7;					//number of miliseconds to step up the pwm by one
int turnOnShift = 20;
int turnOffDelay = 10;					//number of miliseconds to step down the pwm by one
int photoResistorThreshold = 500;		//at which light intensity the PIR functionality is turned on
int photoVal;							//stores the value of photo-resistor

void setup()
{
	pinMode(ledPwmPin1,OUTPUT);
	pinMode(ledPwmPin2,OUTPUT);
	pinMode(ledPwmPin3,OUTPUT);
	pinMode(pirInPin1,INPUT);
	pinMode(boardLed,OUTPUT);
	//for testing
	/*analogWrite(ledPwmPin1,0);
	analogWrite(ledPwmPin2,0);
	analogWrite(ledPwmPin3,0);*/

	//real
	analogWrite(ledPwmPin1,255);
	analogWrite(ledPwmPin2,255);
	analogWrite(ledPwmPin3,255);
	//Serial.begin(9600);
}

void loop()
{
	/*Serial.println(analogRead(photoResistorPin));
	delay(1000);*/
	pirVal1 = digitalRead(pirInPin1);
	photoVal = analogRead(photoResistorPin);
		if(pirVal1 == HIGH){
			if(photoVal < photoResistorThreshold){
				if(!lightTurnedOn){
					turnOnTheLight();
					/*turnOnTheLight(ledPwmPin1);
					turnOnTheLight(ledPwmPin2);
					turnOnTheLight(ledPwmPin3);*/
					lightTurnedOn = true;
				}
			}
		}else{
			turnOffTheLight();
		}
}

//for testing
/*void turnOnTheLight()
{
	if(!lightTurnedOn){
		digitalWrite(boardLed,HIGH);
		int totalCycles = turnOnShift * 2 + 255;
		for(int i=0; i <= totalCycles; i++){
			if(i>=0 && i<=255)analogWrite(ledPwmPin1,i);
			if(i>=turnOnShift && i<=turnOnShift+255)analogWrite(ledPwmPin2,i-turnOnShift);
			if(i>=turnOnShift*2 && i<=turnOnShift*2+255)analogWrite(ledPwmPin3,i-turnOnShift*2);
			delay(turnOnDelay);
		}
	}
}

void turnOffTheLight()
{
	if(lightTurnedOn){
		for(int i=255; i >= 0; i--){
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
}*/


//real
void turnOnTheLight()
{
	if(!lightTurnedOn){
		digitalWrite(boardLed,HIGH);
		int totalCycles = turnOnShift * 2 + 255;
		for(int i=0; i <= totalCycles; i++){
			if(i>=0 && i<=255){
				int j = map(i,0,255,255,0);
				analogWrite(ledPwmPin1,j);
			}

			if(i>=turnOnShift && i<=turnOnShift+255){
				int k = map(i,turnOnShift,turnOnShift+255,255,0);
				analogWrite(ledPwmPin2,k);
			}

			if(i>=turnOnShift*2 && i<=turnOnShift*2+255){
				int l = map(i,turnOnShift*2,turnOnShift*2+255,255,0);
				analogWrite(ledPwmPin3,l);
			}

			delay(turnOnDelay);
		}
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
