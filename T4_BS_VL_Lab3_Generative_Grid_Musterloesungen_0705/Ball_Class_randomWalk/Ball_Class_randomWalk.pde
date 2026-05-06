
//KP - S26 - VL Beispiele: Klassen. Ball Random Walker
class Ball {
  float x, y;
  Ball(float x, float y) {
    this.x = x;
    this.y = y;
  }
  void move(float dx, float dy) 
  {
    this.x += dx;
    this.y += dy;
  }
}
Ball b1;
void setup() {
  size(300, 300);
  b1 = new Ball(width/2.0, height/2.0);
}
void draw() {
  b1.move(random(5)-2.5, random(5)-2.5);
  ellipse(b1.x, b1.y, 10, 10);
}
