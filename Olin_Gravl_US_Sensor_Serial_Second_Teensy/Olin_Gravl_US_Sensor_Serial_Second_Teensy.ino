#define HWSERIAL Serial2

int led = 13;

void setup() {
  Serial.begin(9600);
        HWSERIAL.begin(9600);
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
  if (HWSERIAL.available() > 0) {
    incomingByte = Serial2.readString();
    digitalWrite(led, HIGH);
    Serial.print("Serial2 received: ");
    Serial.print(incomingByte);
    //Serial.println(incomingByte, DEC);
    //            HWSERIAL.println("Serial2 received:");
    //            HWSERIAL.println(incomingByte);
  }
  digitalWrite(led, LOW);
}
