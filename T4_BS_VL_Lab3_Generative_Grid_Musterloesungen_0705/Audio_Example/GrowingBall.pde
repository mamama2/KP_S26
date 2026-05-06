class GrowingBall extends Animation {
  
  public GrowingBall (char triggerKey, SoundFile sound) {
    super(triggerKey, sound);
  }
  
  void plot () {
    if (animationCounter>0) {
      animationCounter++;
      int r = animationCounter*10;
      ellipse(300, 200, r, r);
    }
  }
}
