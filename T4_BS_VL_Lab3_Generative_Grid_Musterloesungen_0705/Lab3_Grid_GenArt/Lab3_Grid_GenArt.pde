//KP - S26 - DMP
//Lab 3: Generative Art - Grid - PDF export
//Marcos Martinez
import processing.pdf.*;

int cols, rows;

float cellW, cellH;
color[] farben = {#4C17BF, #332259, #B3E0F2, #F2C53D, #D95204}; 


void setup() {
  size (600, 400);
  beginRecord(PDF, "Output/gengrid.pdf");
  background(#251b20);
  noStroke();
  cols = 15;
  rows = 10;
  cellW = width/cols;
  cellH = height/rows;
  noLoop();
}

void draw() {

  for (int i =0; i<cols; i++) {
    for (int j= 0; j<rows; j++) {
      int r = int(random(5));
      fill(farben[r]);
      float circleSize = random(cellW);
      float randomPos = int(random(2));
     if (randomPos == 0) {
      ellipse (i*cellW + cellW/2, j *cellH + cellH/2, circleSize, circleSize);
      r = int(random(5));
      fill(farben[r]);
      ellipse (i*cellW + cellW/2, j *cellH + cellH/2, circleSize/2, circleSize/2);
     }  else {
     ellipse (i*cellW + cellW/2, j *cellH + cellH/2, circleSize, circleSize);
     }
  }
    
  }
  
  endRecord();
}
