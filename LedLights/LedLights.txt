// Do not remove the include below
#include "Arduino.h"
#include "ESP8266.h"
#include <SoftwareSerial.h>

/*
 * Definitions
 */
#define SSID        "MySSID"
#define PASSWORD    "MyKey"
#define HOST_NAME   "www.timeapi.org"
#define HOST_PORT   (80)

/*
 * Declarations
 */
SoftwareSerial mySerial(4, 7); /* TX:D4, RX:D7 */
ESP8266 wifi(mySerial);
uint32_t len;

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

	//Init debug serial connection
	Serial.begin(9600);
	Serial.println("Serial connection setup [DONE]");

	//Init WiFi
	while (true) {
		Serial.println("WiFi setup [START]");
		if (wifi.joinAP(SSID, PASSWORD)) {
			Serial.print("Join AP success\r\n");
			if (wifi.disableMUX()) {
				Serial.println("WiFi setup [DONE]");
				break;
			} else {
				Serial.println("WiFi setup [MUX ERR]");
			}
		} else {
			Serial.println("WiFi setup [AP ERR]");
		}
		//If init failed, wait 20s and try again
		delay(20000);
	}
}

void loop()
{
	// the trigger for turning the light on will come from the network
	// Home Assistant

	uint8_t buffer[512] = {0};
	char *request = "GET /utc/now HTTP/1.1\r\nHost: www.timeapi.org\r\nAccept-Encoding: gzip,deflate\r\nUser-Agent:ESP8266\r\nContent-Type:application/json\r\n\r\n";
	if (wifi.createTCP(HOST_NAME, HOST_PORT)) {
		if (wifi.send((const uint8_t*)request, strlen(request))) {
			Serial.println("Send data [OK]");
		}
		else {
			Serial.println("Send data [ERR]");
		}
	}
	else {
		Serial.println("Create TCP [ERR]");
	}

	len = wifi.recv(buffer, sizeof(buffer), 10000);
	if (len > 0) {
		Serial.print("Received:[");
	for (uint32_t i = 0; i < len; i++) {
		Serial.print((char)buffer[i]);
	}
		Serial.print("]\r\n");
	}

	if (wifi.releaseTCP()) {
		Serial.println("Release TCP [OK]");
	} else {
		Serial.println("Release TCP [ERR]");
	}
	delay(20000);

}

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
