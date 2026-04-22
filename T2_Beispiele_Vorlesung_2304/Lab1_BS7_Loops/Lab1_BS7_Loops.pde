//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. Beispiel 7: for Loops
float[] xpositions = new float[5];
void setup () {
  size(400, 400);
  background(255);
 // for (int i = 0; i < xpositions.length; i++) {
 //   xpositions[i] = random(0, 10);
 // }
 int i = 0;
 while(i < xpositions.length){
 xpositions[i] = random(0,10);
 i++;
 }
  println(xpositions);
}

void draw () {
}
