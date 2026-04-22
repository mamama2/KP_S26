class Walker {
  float x, y;
  Walker(float _x, float _y) {
    x = _x;
    y =_y;
  }

  void display() {
    strokeWeight(3);
    stroke(0,10);
       // stroke(0);

    point(x, y);
  }
  void update() {
    x += random(-3, 3);
    y += random(-3, 3);
  }
}
