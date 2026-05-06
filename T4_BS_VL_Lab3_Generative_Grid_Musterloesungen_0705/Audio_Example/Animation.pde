interface Plotable {
  void plot();
}

interface Triggerable {
  void trigger(char c);
  void stopAnimation(char c);
}

class Animation implements Plotable, Triggerable {
  
  char triggerKey;
  int animationCounter;
  SoundFile sound;
  
  public Animation (char triggerKey, SoundFile sound) {
    this.triggerKey = triggerKey;
    // setze Soundfile
    this.sound = sound;
  }
  
  void trigger (char c) {
    if (triggerKey == c) {
      animationCounter = 1;
      // starte Soundfile bei Tastendruck
      sound.play();
    }
  }
  
  void stopAnimation (char c) {
    if (triggerKey == c) {
      animationCounter = 0;
    }
  }
  
  void plot () {}
  
}
