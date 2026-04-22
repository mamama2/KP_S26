//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. Beispiel 11: Random_Noise


float x,y;

void setup () {
  size(400, 400);
  background(255);
  y = height/2;
  frameRate(2);
}

void draw () {
  
  background(255);
  //x++;
  float r = random(0,width);
 //println(r);
 ellipse(r,y,10,10);
}
