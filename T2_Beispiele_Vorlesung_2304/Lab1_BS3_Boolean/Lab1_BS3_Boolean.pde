//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. Beispiel 3: Boolean
boolean grayscale = false;


void setup () {
  size(400, 400);
  background(255);
}

void draw () {
 if (grayscale == true){
 fill(200);
 }
if (grayscale == false){
 fill(245,160,0);
 }
 circle(200,200,100);
 }
