const int LED[] = { 2, 3, 4 };
float angle;

void setup() {
  Serial.begin(9600);
  angle = 0;

  pinMode(LED[0], OUTPUT);
  pinMode(LED[1], OUTPUT);
  pinMode(LED[2], OUTPUT);
}

void loop() {
  float value = analogRead(0);
  Serial.println(value);
  angle = map(float(value) / 1023 * 2 * PI, 0, 2 * PI, 2.4, 0.9);

  if(value > 1023 / 3 * 2){
    digitalWrite(LED[0], HIGH);
    digitalWrite(LED[1], LOW);
    digitalWrite(LED[2], LOW);
  }else if(value < 1023 / 3 * 2 && value > 1023 / 3){
    digitalWrite(LED[0], LOW);
    digitalWrite(LED[1], HIGH);
    digitalWrite(LED[2], LOW);
  }else{
    digitalWrite(LED[0], LOW);
    digitalWrite(LED[1], LOW);
    digitalWrite(LED[2], HIGH);
  }
  
  delay(1000 / 10);
}
