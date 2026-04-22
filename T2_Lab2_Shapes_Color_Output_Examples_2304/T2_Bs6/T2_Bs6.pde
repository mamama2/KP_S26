// T2. Lab 2. DMP - KP_S26
// Martinez
// Back to Basics. Color Example 1

float x, y;
void setup() {
  size(400, 400);
  background(0);
  noLoop();
  strokeWeight(3);
}
void draw() {

  for (int i=0; i<100; i++) {
    x = random(width);
    y=random(height);
    stroke(random(255));
    pushMatrix();
    translate(x,y);
    rotate(random(TWO_PI));
    line (0, 0, 10, 10);
    popMatrix();
  }
}
