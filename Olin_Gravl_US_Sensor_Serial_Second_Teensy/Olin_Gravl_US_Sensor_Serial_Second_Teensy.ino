//#define HWSERIAL Serial2

int led = 13;
uint32_t FLAG_time; // millis() time when flag was raised for turning on/off FLAG led (13)

uint32_t serial_freq_time;

float measured_serial_freq;

void setup() {
  Serial.begin(9600);
  Serial2.begin(9600);
  pinMode(led, OUTPUT);
}

void loop() {
  String incomingByte;
        
  if (Serial2.available() > 0) {
    incomingByte = Serial2.read();
    digitalWrite(led, HIGH);
    FLAG_time = millis();
    //Serial.print("Serial2 received: ");

    measured_serial_freq = 1000/(millis() - serial_freq_time); // calc frequency with current time and time from last loop (serial_freq_time)
    serial_freq_time = millis(); // take current time for next freq measurement
    
    Serial.print(incomingByte);
    //Serial.println(incomingByte, DEC);
    //            HWSERIAL.println("Serial2 received:");
    //            HWSERIAL.println(incomingByte);
  }
  digitalWrite(led, LOW);
}
