// KP - S26 - DMP - Lab 4: Polar Grid
//Martinez 
//Lab 4: Polar Grid project 
import processing.pdf.*;
import java.util.Calendar;

color[] cols = {#2941CC, #6B81FF, #4DC5FF, #FFF0E6, #FF6630};

//color[] cols = {#D92B4B, #63B0F2, #6BBEF2, #B0D959, #C2D971};
//color[] cols = {#F2526E, #F17A97, #F3BCC8, #6DDDF2, #C1F0F4};
float radius, slices, slice;
float x, y;
float circles;

void setup() {
  size(600, 600);
  beginRecord(PDF,"output/" + timestamp() + ".pdf");
  background(20, 50, 100);
  slices = 6;
  radius = 10;
  circles = 25;
  noStroke();
  noLoop();
}

void draw() {
  for (float j = 0; j < circles; j++) {
    for (float i = 0; i < slices; i++) {
      slice = TWO_PI/slices;
      float angle = i*slice;
      x = width/2 + cos(angle) * radius * (j+1);
      y = height/2 + sin(angle) * radius * (j+1);

      int c = (int) map (y, 0, TWO_PI, 0, cols.length-1) % cols.length;
      
     // int c = (int) (i*j) % cols.length;
      fill(cols[c]);
     // pushMatrix();
     // translate(x,y);
     // rotate(QUARTER_PI);
    //  rect(0,0,8,8);
    //  popMatrix();
      ellipse(x, y, 8, 8);
    }
    slices +=6;
  }
  endRecord();
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
