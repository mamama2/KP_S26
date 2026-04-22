// T2. Lab 2. DMP - KP_S26
// Martinezu
// Back to Basics. Basics Shapes Example 10. Output a random walker to a PDF
import processing.pdf.*;

Walker[] points = new Walker[100];
void setup() {
   beginRecord(PDF,"Output/rec1.pdf");

  size (400, 400);
  background(255);
  for (int i=0; i<points.length; i++) {
    points[i] = new Walker(width/2, height/2);
  }
}

void draw() {
   // background(255);

  for (int i=0; i<points.length; i++) {

    points[i].display();
    points[i].update();
  }
}
void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}
