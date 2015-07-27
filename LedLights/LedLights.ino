// Do not remove the include below
#include "LedLights.h"

//pins
const int ledPwmPin1 = 3;			//the pin that is used to dim the light #1
const int ledPwmPin2 = 5;			//the pin that is used to dim the light #2
const int ledPwmPin3 = 6;			//the pin that is used to dim the light #3
const int ledPin13 = 13;
/*const int pirInPin1 = 2;			//Passive Infrared Sensor - motion detector #1
const int pirInPin2 = 4;*/			//Passive Infrared Sensor - motion detector #2
const int lightSensorPin = 7;		//the pin which will have the light sensor connected
const int manualSwitchPin = 8;		//with this pin we can manualy turn the lights on

//runtime vars
int lightOnDuration = 10000;		//for how long will the light stay ON after PIR sensor detects motion
int pirVal1;						//the value of PIR #1 sensor
int pirVal2;						//the value of PIR #2 sensor
int manualSwitchVal;
bool lightTurnedOn = false;			//is the light currently turned on
int lightFullPwm = 255;
int lightTurnOnDuration = 2000;
int lightTurnOffDuration = 4000;
int lightNumberOfSteps = 100;
unsigned long startMillis = 0;
unsigned long currentMillis = 0;
//int pwm = 0;

//The setup function is called once at startup of the sketch
void setup()
{
	// Add your initialization code here
	/*pinMode(pirInPin1, INPUT);
	pinMode(pirInPin2, INPUT);*/
	pinMode(ledPin13,OUTPUT);
	pinMode(ledPwmPin1,OUTPUT);
	pinMode(manualSwitchPin,INPUT);
	pinMode(lightSensorPin, INPUT);
	//Serial.begin(9600);
}

// The loop function is called in an endless loop
void loop()
{
	/*if(Serial.available()){
		char ch = Serial.read();
		if(ch == '+'){
			pwm = pwm + 10;
			analogWrite(ledPwmPin1,pwm);
		}else if(ch == '-'){
			pwm = pwm - 10;
			analogWrite(ledPwmPin1,pwm);
		}
		Serial.println(pwm);
	}*/

	//Add your repeated code here
	/*pirVal1 = digitalRead(pirInPin1);
	pirVal2 = digitalRead(pirInPin2);*/
	manualSwitchVal = digitalRead(manualSwitchPin);
	if(/*pirVal1 == HIGH || pirVal2 == HIGH || */manualSwitchVal == HIGH){
		if(!lightTurnedOn){
			turnOnTheLight(ledPwmPin1);
			turnOnTheLight(ledPwmPin2);
			turnOnTheLight(ledPwmPin3);
			lightTurnedOn = true;
		}
		startMillis = millis();
	}
	currentMillis = millis();
	if(currentMillis - lightOnDuration > startMillis){turnOffTheLight();}
}

void turnOnTheLight(int lightPin)
{
	int totalDelay = 0;
	int delayInterval = lightTurnOnDuration / lightNumberOfSteps;
	int lightIncrement = lightFullPwm / lightNumberOfSteps;
	int lightPwm = 0;
	do{
		analogWrite(lightPin,lightPwm);
		lightPwm += lightIncrement;
		//lightPwm += (lightPwm + 1) * 2;
		delay(delayInterval);
		totalDelay += delayInterval;
	}while(totalDelay < lightTurnOnDuration);
	analogWrite(lightPin,lightFullPwm);
}

void turnOffTheLight()
{
	analogWrite(ledPwmPin1,0);
	analogWrite(ledPwmPin2,0);
	analogWrite(ledPwmPin3,0);
	lightTurnedOn = false;
}
