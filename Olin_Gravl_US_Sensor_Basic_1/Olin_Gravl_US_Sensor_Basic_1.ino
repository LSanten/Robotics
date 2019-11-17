// Leon Santen
// if doesnt connect to arduino:
// sudo chmod a+rw /dev/ttyACM0 

#include "Arduino.h"

/*
 Trig:  Measurement trigger pin - Low level pulse over 50us triggers one distance measurement.
 Holding this pin LOW will repeats the measurement every 100ms.
 */
 /*
 OUT: analog output 0.33mV equals 1mm
 */

#define  TRIGGER   2
#define  LED       13

uint32_t US_frequency = 8; //frequency: clicks per second
uint32_t current_millis; 
uint32_t task_millis = 0;
uint32_t task_length = 1000/US_frequency;
uint32_t serial_freq_time = 0;

float measured_serial_freq;

int number_of_sensors = 3; //the amount of ultrasonic sensors used
int sensor_pins[] = {33,34,35}; // input pins for sensor data - pin number refers to sensor from left to right in direction of traffic
unsigned int flag_value = 500; // in millimeters - refers to lower limit of sensor data (everything lower will flag)
//size_t data_size; // size of data array in bytes

void setup()
{
  pinMode(TRIGGER, OUTPUT);
  digitalWrite(TRIGGER, HIGH);
  pinMode(LED, OUTPUT);
  Serial1.begin(9600);

  digitalWrite(LED, HIGH);
  delay(1000);
  digitalWrite(LED, LOW);
}
void loop()
{
  current_millis = millis();

  // send trigger and run code in if statement with frequency --> US_frequency
  if (current_millis - task_millis >= task_length){
    digitalWrite(LED, HIGH);
    task_millis = millis();
    // generate the pulse to trigger the sensor
    digitalWrite(TRIGGER, LOW);
    delayMicroseconds(50);
    digitalWrite(TRIGGER, HIGH);
    delayMicroseconds(50);
  
    unsigned int sensor_data[number_of_sensors];
    String data_string; // string that contains data

    // loop through sensors, read data, convert to mm, print data
    data_string.concat('{');
    for (int i=0; i < number_of_sensors; i++){
      sensor_data[i] = analogRead(sensor_pins[i]);
      sensor_data[i] = (unsigned int)(((unsigned long)sensor_data[i] * 5000)/1024); //change from analog value to voltage
      sensor_data[i] = (unsigned int)((float)sensor_data[i] / 0.33f); //0.33mV equals 1mm      
      
      
      data_string.concat(sensor_data[i]);
      if (i < number_of_sensors - 1){
        data_string.concat(',');
      }
      else{
        data_string.concat('}');
      }
    }
    // Print sensor data (in mm) like:
    // {1581,2115,1551}
    Serial1.print(data_string);
    
    measured_serial_freq = 1000.0/(float(millis() - serial_freq_time)); // calc frequency with current time and time from last loop (serial_freq_time)
    serial_freq_time = millis(); // take current time for next freq measurement    
  }
 digitalWrite(LED, LOW);
}
