// T2. Lab 2. DMP - KP_S26
// Martinez
// Back to Basics. Basic Shapes Example 5. PShape


PShape shape;

void setup() {
  size(400, 400);
  background(0);
  bow();
}
void draw() {
  if (mousePressed) {
    shape(shape, mouseX, mouseY);
  }
}
void keyPressed() {
  background(0);
}

void bow() {
  shape = createShape();
  shape.beginShape();
  shape.stroke(255);
  shape.fill(255, 50);
  shape.vertex(0, 0);
  shape.vertex(30, 30);
  shape.vertex(60, 0);
  shape.vertex(60, 60);
  shape.vertex(30, 30);
  shape.vertex(0, 60);
  shape.endShape(CLOSE);
}
