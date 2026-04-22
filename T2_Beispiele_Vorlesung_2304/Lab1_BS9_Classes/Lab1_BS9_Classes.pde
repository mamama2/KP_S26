//Kreatives programmieren S26 DMP 
//Martinez
//Lab1. BacktoBasics. Beispiel 9: Object sand Classes


//Circle circ;
Circle[] circs = new Circle[100];
void setup () {
  size(400, 400);
  background(255);
  
  //circ = new Circle();
  for (int i=0;i<circs.length;i++){
  
    circs[i] = new Circle();
  }
}

void draw () {
  
  background(255);
  
  //circ.display();
  //circ.update();
  for (int i=0;i<circs.length;i++){
  
    circs[i].display();
    circs[i].update();
  }
}

class Circle  {
  float x, y;
  float size;
  color col;
  float stepSizeX, stepSizeY;
    Circle() {
      x = random(0,400);
      y = random(0,400);
      size =10;
      col = color(0, 0, 255);
      stepSizeX = random(-1,1);
      stepSizeY = random(-1,1);
    }

  void display() {
    fill(col);
    circle(x, y, size);
  }

  void update() {
    x += stepSizeX;
    y += stepSizeY;
  }
}
