import processing.serial.*;

Serial port;
Arrow arrow;
Colour red, yellow, green;
float angle;

void settings(){
  size(640, 640);
}

void setup(){
  noStroke();
  
  port = new Serial(this, Serial.list()[1], 9600);
  arrow = new Arrow();
  red = new Colour(color(255, 0, 0), new PVector(0, 0));
  yellow = new Colour(color(255, 255, 0), new PVector(width / 3, 0));
  green = new Colour(color(0, 255, 0), new PVector(width / 3 * 2, 0));
  angle = 0;
}

void draw(){
  clear();
  background(25);
 
  String value = port.readStringUntil(13);
  if(value != null && !value.isEmpty()){
    angle = map(float(trim(value)) / 1023 * 2 * PI, 0, 2 * PI, 2.4, 0.9);
    println(angle);
  }
  
  red.Draw();
  yellow.Draw();
  green.Draw();
  arrow.Draw(angle);
}