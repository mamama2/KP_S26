//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. Beispiel 2: Colors
color r = color(255,0,0);
color g = color(0,255,0);
color b = color(0,0,255);

color white = #FFFFFF;
color black = #000000;

void setup () {
  size(400, 400);
  background(white);
}

void draw () {
  fill(r);
  stroke(g);
  circle(200,200,100);
  fill(b);
  stroke(r);
  circle(50,200,100);

}
