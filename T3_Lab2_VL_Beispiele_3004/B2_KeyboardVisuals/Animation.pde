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
  
 
  void mouseMoved()
{
  diameter = diameter + 2;
}

void mouseDragged()
{
  diameter = diameter - 2;
}
}
