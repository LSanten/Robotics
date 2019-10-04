// Leon Santen
// if doesnt connect to arduino:
// sudo chmod a+rw /dev/ttyACM0 

#include "Arduino.h"

/*
 Trig:  Measurement trigger pin - Low level pulse over 50us triggers one distance measurement.
 Holding this pin LOW will repeats the measurement every 100ms.
 */
#define  TRIGGER   2
#define  LED       13

/*
 OUT: analog output 0.33mV equals 1mm
 */

int number_of_sensors = 2; //the amount of ultrasonic sensors used
int sensor_pins[] = {15, 16};

void setup()
{
  pinMode(TRIGGER, OUTPUT);
  digitalWrite(TRIGGER, HIGH);
  pinMode(LED, OUTPUT);
  Serial1.begin(9600);
}
void loop()
{
  // generate the pulse to trigger the sensor
  
  digitalWrite(TRIGGER, LOW);
  delayMicroseconds(50);
  digitalWrite(TRIGGER, HIGH);
  delayMicroseconds(50);

  unsigned int sensor_data[number_of_sensors];

  for (int i=0; i < number_of_sensors; i++){
    sensor_data[i] = analogRead(sensor_pins[i]);
    sensor_data[i] = (unsigned int)(((unsigned long)sensor_data[i] * 5000)/1024); //change from analog value to voltage
    sensor_data[i] = (unsigned int)((float)sensor_data[i] / 0.33f); //0.33mV equals 1mm
  }

  for (int i=0; i < number_of_sensors; i++){
    Serial1.print("sensor ");
    Serial1.print(sensor_pins[i]);
    Serial1.print(": ");
    Serial1.print(sensor_data[i]);
    Serial1.print("mm");
    Serial1.print(" | ");
  }

  Serial1.println();
  
  digitalWrite(LED, LOW);
  delay(100); // TODO: remove delay function
  digitalWrite(LED, HIGH);
}
