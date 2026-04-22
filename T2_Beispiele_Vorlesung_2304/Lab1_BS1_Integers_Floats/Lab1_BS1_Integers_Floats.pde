//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. VL Beispiel 1: Integers & floats
//int x = 200;
float x = 200;
float y = 200;
void setup () {
  size(400, 400);
}

void draw () {
  background(255);
  circle(x, y, 20);
  //x=x+1;
  x=x+0.1;
  y = y + 0.5;
}
