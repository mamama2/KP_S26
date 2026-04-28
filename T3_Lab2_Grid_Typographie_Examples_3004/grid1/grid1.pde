// KP - S26 - DMP
//Lab2: Design Basics Teil 2. BS Grid 1 (Static Illustration)
//Nested loops
//Step1: 2 For-Loops, one for the columns and one for the rows
//Step2: 4 types of Lines: Vert, Horz, and 2xDiagonalBetween beginShape and endShape, create the Vertex X,Y Points 
//Draw a line (4 lines, randomize, each line has a 0.25 probability to be drawn)
//Var count defines the size of the grid
//move the Hor und Ver lines to the middle of the cell (+ size/2)


float size;
float count=80;
void setup() {
  size(800, 800);
  background(0);
  stroke(255);
  size = width/count;
  noLoop();
  randomSeed(10);
}
void draw() {
  for (int i= 0; i<count; i++) {
    for (int j=0; j<count; j++) {
      strokeWeight(1);
      // rect(size*i, size*j, size, size);
      float posX =size*i;
      float posY = size*j;
      strokeWeight(2);
      float r = random(1);
      if (r<=0.25) {
        line(posX+size/2, posY, posX+size/2, posY+size);//Vert
      } else if (r>0.25 && r<0.5) {
        line(posX, posY+size/2, posX+size, posY+size/2);//Hor
      } else if (r>0.5 && r<0.75) {
        line(posX, posY, posX+size, posY+size);//1.Diagonal
      } else {
        line(posX+size, posY, posX, posY+size);
      }
    }//innere
  }
}
