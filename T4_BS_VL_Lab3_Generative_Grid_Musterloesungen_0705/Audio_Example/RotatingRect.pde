class RotatingRect extends Animation {
  
  public RotatingRect (char triggerKey, SoundFile sound) {
    super(triggerKey, sound);
  }
  
  void plot () {
    if (animationCounter>0) {
      animationCounter++;
      translate(300,200);
      rotate(PI*0.03*animationCounter);
      rect(-50, -50, 100, 100);
    }
  }
}
