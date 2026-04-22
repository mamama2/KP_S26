//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. Beispiel 6: Conditionals II
boolean grayscale = false;
int x = 100;
int y = 10;
int z = 4;
void setup () {
  size(400, 400);
  background(255);
  fill(0);
  noLoop();
}

void draw () {
  /* if (x == y || x<z) {
   println("Correct");
   } else {
   println("Wrong");
   }*/

  if (x == y) {
    text ("equal", 200, 200);
  } 
  else if (x>y) {
    text("x is greater", 200, 200);
  } else {
    text("y is greater", 200, 200);
  }
}
