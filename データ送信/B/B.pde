import processing.serial.*;

Serial my_serial;
int input;

void setup() {
  size(300, 200);
  println( Serial.list() );
  my_serial = new Serial( this, Serial.list()[0], 9600 );
}

void draw() {
  background(0);
  println(input);
}

void serialEvent(Serial port) {
  input = port.read();
}
