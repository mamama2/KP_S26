//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. Beispiel 12: Noise


float x,y;

void setup () {
  size(400, 400);
  background(255);
  y = height/2;
 // frameRate(2);
}

void draw () {
  
  //background(255);
  x++;
  float n = noise(x/300) * width;
 //println(r);
 ellipse(n,y,10,10);
}
