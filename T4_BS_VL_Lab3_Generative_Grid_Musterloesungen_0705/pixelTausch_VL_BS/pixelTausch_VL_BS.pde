// KP - S26 - VL Beispiel - Pixel Tauschen 

PImage img;

void setup() {
  size(640, 360);
  // lade Bild aus dem folder "data"
  img = loadImage("data/moonwalk.jpg");
}

void draw() {
  // lade Pixel
  img.loadPixels();
  // führe 1000mal durch
  for (int n=0; n<1000; n++) {
    // wähle zufälliges Pixel als Quelle
    int source = 10+(int)random(img.pixels.length-20);
    // merke dir Farbe dieses Pixels
    color c = img.pixels[source];
    // bestimme Abweichung vom Quellpixel -> Zielpixel
    int target = (int)random(-10,10);
    // speichere in Quellpixel Farbe des Zielpixels
    img.pixels[source] = img.pixels[source+target];
    // speichere ins Zielpixel den gemerkten Wert (Farbe des Quellpixels)
    img.pixels[source+target] = c;
  }
  img.updatePixels();
  // update Pixel und zeichne manipuliertes Bild
  image(img, 10, 10);
}
