//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. Beispiel 5: Arrays
color[] colors = {#03658C, #F2CA52, #F2EBD5, #F24141, #0D0D0D};

float[] xpositions = new float[5];
void setup () {
  size(400, 400);
  background(255);
  xpositions[0] = 200;
  xpositions[1] = 100;

  xpositions[2] = 40;
}

void draw () {
  fill(colors[3]);
  circle(xpositions[1], 200, 100);
}
