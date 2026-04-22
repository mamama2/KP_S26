// T2. Lab2. DMP - KP_S26
// Martinez
// Back to Basics. Basics Shapes Example 2 Sterne

float x;
float size;

void setup() {
  size (400, 400);
  background(0);


  noStroke();
fill(255,10);
rectMode(CENTER);
}

void draw() {
  translate(width/2, height/2);
  rotate(random(TWO_PI));
  rect(0,0,random(10,300), 20);
}
