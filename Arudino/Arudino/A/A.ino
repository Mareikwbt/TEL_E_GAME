int prev = LOW;
int button_status = 0;
int led_status = 0;
void setup() {
  Serial.begin(9600);
  pinMode(2,INPUT);
  pinMode(7,OUTPUT);
}
void loop() {
  if ( Serial.available() > 0 ) {
    int data = Serial.read();
    if ( data == 'a' ) {
      button_status=0;
    }
  }
  int sw = digitalRead( 2 );
  if ( sw == HIGH && prev == LOW) {
    button_status = 1 - button_status;
    led_status = 1 - led_status;
    digitalWrite(7,led_status);
  }
  prev = sw;
  Serial.write(button_status);
  delay(10);
}
