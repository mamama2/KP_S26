//KP - S26 - DMP 
//Martinez 
//Example Random

float x, y;

void setup() {
  size(400, 400);
  background(255);
  y = height/2;
  //frameRate(10);
}

void draw() {
  //background(255);
  float r = random(0, width);
  ellipse(r, y, 10, 10);
}
