// T2. Lab2. DMP - KP_S26
// Martinez
// Back to Basics. Basics Shapes Example 9. Sterne Save as PDF or PNG

import processing.pdf.*;
float x;
float size;

void setup() {
  size (400, 400);
  background(100);
 beginRecord(PDF,"Output/rec1.pdf");

  noStroke();
fill(255,10);
rectMode(CENTER);
}

void draw() {
  
  translate(width/2, height/2);
  rotate(random(TWO_PI));
  rect(0,0,random(10,300), 20);
  //saveFrame("Output/###.png");
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}
