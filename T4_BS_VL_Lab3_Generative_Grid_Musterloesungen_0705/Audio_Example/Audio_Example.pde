// KP - S26 - VL Beispiele: Ton/Libraries

// importiere die sound Library
import processing.sound.*;

Animation[] animations;

void setup() {
  size(500,500);
  animations = new Animation[] {
    // übergebe als weiteren Parameter ein Soundfile aus dem "data" Ordner
    new GrowingBall('1', new SoundFile(this,"DM-CGS-01.mp3")),
    new RotatingRect('2', new SoundFile(this,"DM-CGS-05.mp3"))
  };
}

void draw () {
  background(0);
  for (int n=0; n<animations.length; n++) {
    animations[n].plot();
  }
}

void keyPressed () {
  for (int n=0; n<animations.length; n++) {
    animations[n].trigger(key);
  }
}

void keyReleased () {
  for (int n=0; n<animations.length; n++) {
    animations[n].stopAnimation(key);
  }
}
