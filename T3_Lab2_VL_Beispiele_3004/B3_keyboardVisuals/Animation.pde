 int diameter = 1;
class Animation {
  int animationCounter;
  char animationKey;
 

  public Animation (char c) {
    animationCounter = 0;
    animationKey = c;
  }

  void handleInput () {
    if (keyPressed && animationKey == key) {
      animationCounter++;
    } else {
      animationCounter = 0;
    }
    println(animationCounter);
  }

  void drawAnimation1 () {
    if (animationCounter>0) {
      fill(255, 0, 0);
      rect(0, 0, width, height);
    }
  }
  
  void drawAnimation2 () {
    if (animationCounter>0) {
      fill(255, 255, 0);
      rect(0, 0, width, height);
    }
  }
  
  void drawAnimation3 () {
    if (animationCounter>0) {
      fill(255, 0, 255);
      rect(0, 0, width, height);
    }
  }
  
  void drawAnimation4 () {
    if (animationCounter>0) {
      fill(0, 255, 255);
      rect(0, 0, width, height);
    }
  }
  void drawAnimation5 () {
    if (animationCounter>0) {
       fill(255, 255, 255);
      ellipse(width/2, height/2, diameter, diameter);
      diameter++;
    }
  }
  void mouseMoved()
{
  diameter = diameter + 2;
}

void mouseDragged()
{
  diameter = diameter - 2;
}
}
