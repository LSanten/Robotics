//#define HWSERIAL Serial2

int led = 13;
uint32_t FLAG_time; // millis() time when flag was raised for turning on/off FLAG led (13)

void setup() {
  Serial.begin(9600);
  Serial2.begin(9600);
  pinMode(led, OUTPUT);
}

void loop() {
        String incomingByte;
/**        
  if (Serial.available() > 0) {
    incomingByte = Serial.read();
    digitalWrite(led, HIGH);
    Serial.print("USB received: ");
    Serial.println(incomingByte, DEC);
                HWSERIAL.print("USB received:");
                HWSERIAL.println(incomingByte, DEC);
  }
**/
  if (Serial2.available() > 0) {
    incomingByte = Serial2.readString();
    digitalWrite(led, HIGH);
    FLAG_time = millis();
    //Serial.print("Serial2 received: ");
    Serial.print(incomingByte);
    //Serial.println(incomingByte, DEC);
    //            HWSERIAL.println("Serial2 received:");
    //            HWSERIAL.println(incomingByte);
  }
     
  
  
  
}
