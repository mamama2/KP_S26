//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. Beispiel 8: Functions

void setup () {
  size(400, 400);
  background(255);
}

void draw () {
  smiley(300, 300);
  smiley(100, 100);
}

/*void smiley() {
 fill(255, 255, 0);
 circle(200, 200, 200);
 
 fill(0);
 
 circle(170, 170, 20);
 circle(230, 170, 20);
 
 }
 */
void smiley(float x, float y) {

  fill(255, 255, 0);
  circle(x, y, 200);

  fill(0);

  circle(x-30, y-30, 20);
  circle(x+30, y-30, 20);
}
