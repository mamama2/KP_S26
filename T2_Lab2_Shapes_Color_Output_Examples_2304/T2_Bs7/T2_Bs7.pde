// T2. Lab2. DMP - KP_S26
// Martinez
// Back to Basics. Colors Example 2
float x, y;
void setup() {
  size(400, 400);
  background(255);
  noLoop();
  strokeWeight(3);
  randomSeed(0);
}
void draw() {

  for (int i=0; i<400; i++) {
    x = random(width);
    y=random(height);
    stroke(random(255),random(255),random(255));
    pushMatrix();
    translate(x,y);
    rotate(random(TWO_PI));
    line (0, 0, 10, 10);
    popMatrix();
  }
}
