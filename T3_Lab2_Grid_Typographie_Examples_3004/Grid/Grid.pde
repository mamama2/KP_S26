// KP - S26 - DMP
//Lab2: Design Basics Teil 2. BS Grid 1 (Static Illustration)
//Nested loops
//Step1: 2 For-Loops, one for the columns and one for the rows
//Step2: 4 types of Lines: Vert, Horz, and 2xDiagonalBetween beginShape and endShape, create the Vertex X,Y Points 
//Draw a line (4 lines, randomize, each line has a 0.25 probability to be drawn)
//Var count defines the size of the grid
//move the Hor und Ver lines to the middle of the cell (+ size/2)

float size;
float count = 30;
void setup() {
  size(800, 800);
  background(255);
  stroke(0);
  size = width/count; //weil ich 10 Columns machen möchte
  noLoop(); //Static Design
}

void draw() {
  for (int i=0; i<count; i++) {
    for (int j=0; j<count; j++) {
      float posx = size * i;
      float posy = size * j;
      
      float r = random(1);
      
      strokeWeight(3);
      if (r <= 0.25){
         line (posx+ size/2, posy, posx+ size/2, posy+size);
      } else if (r > 0.25 && r <= 0.5){
        line (posx, posy+ size/2, posx + size, posy+ size/2);
      } else if( r > 0.5 && r <= 0.75){
         line (posx, posy, posx + size, posy+size);
      } else {
         line (posx + size, posy, posx, posy+size);
      }
     
      //rect(size*i, size*j, size, size);
    }
  }
}
