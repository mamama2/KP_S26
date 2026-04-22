// T2.Lab 2. DMP - KP_S26
// Martinez
// Back to Basics. Basics Shapes Example 1

float x;
float size;

void setup() {
  size (400, 400);
  background(255);

  size = 10;
  noStroke();
  fill(0, 100);
}

void draw() {
  x = random(400);
  if (x<100) {
    size = random (1, 10);
  } else if (x > 100 && x < 300) {
    size = random (11, 20);
  } else {
    size = random(21, 30);
  }

  circle(x, random(height), size);
}
