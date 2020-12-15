#include <SoftwareSerial.h>

//int PIN = 13; // sortie pour lecture PWM 
byte variable = 0x8;// 
SoftwareSerial serial2(11,13); //RX, TX

void setup() {
  // put your setup code here, to run once:
//  pinMode(PIN,OUTPUT);
  Serial.begin(4800);
  serial2.begin(4800);
  
  Serial.println("hello world");
}

void loop() {
  int state = 0;

  if(serial2.available())
  Serial.println(serial2.read(),HEX);

  serial2.write(16);

  serial2.write(1);
 
  serial2.write(2);

  serial2.write(3);
  
  delay(1000);
 
/*
  while (1) {

       if(serial2.available())
       Serial.println(serial2.read(),HEX);
     //Serial.write(variable);
    
    if (state == 0) {
      digitalWrite(PIN, LOW);
      state = 1;
    }
    else {
      digitalWrite(PIN, HIGH);
      state = 0;
    }
    delayMicroseconds(4500);
    
    
  }
  */
  // put your main code here, to run repeatedly:

}
