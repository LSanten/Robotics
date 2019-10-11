//#define HWSERIAL Serial2

int led = 13;
uint32_t FLAG_time; // millis() time when flag was raised for turning on/off FLAG led (13)

uint32_t serial_freq_time = 0;

float measured_serial_freq;

String data_string;

void setup() {
  Serial.begin(9600);
  Serial2.begin(9600);
  pinMode(led, OUTPUT);
}

void loop() {
  
        
  if (Serial2.available() > 0) {
    digitalWrite(led, HIGH);
    char incoming_character = Serial2.read();
    data_string.concat(incoming_character);

    if (incoming_character == '}'){
      Serial.print(data_string);
      String data_string = "";

      measured_serial_freq = 1000.0/(float(millis() - serial_freq_time)); // calc frequency with current time and time from last loop (serial_freq_time)
      serial_freq_time = millis(); // take current time for next freq measurement
      //Serial.println(measured_serial_freq);
    }  
  }
  digitalWrite(led, LOW);
}
