// T2. Lab2. DMP - KP_S26
// Martinez
// Back to Basics. Colors Example 3 HSB

float x, y;
void setup() {
  size(400, 400);
  background(255);
  noLoop();
  colorMode(HSB,255,255,255,1);
  strokeWeight(3);
  randomSeed(0);
}
void draw() {

  for (int i=0; i<400; i++) {
    x = random(width);
    y=random(height);
    stroke(random(50),230,200);
    pushMatrix();
    translate(x,y);
    rotate(random(TWO_PI));
    line (0, 0, 10, 10);
    popMatrix();
  }
}
