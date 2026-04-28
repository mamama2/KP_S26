// Beispiel Anwendung von Klassen  Bs.1
// Kreatives Programmieren mit Processing - DMP_B6 KP_S26

// der counter beschreibt in welchem "Frame" der Animation man sich gerade befindet
int animationCounter;

void setup () {
  size(600, 400);
  // Frame auf Anfang setzen
  animationCounter = 0;
}

void draw () {
  // Hintergrund füllen
  background(0);
  // Eingabe verarbeiten
  handleInput();
  // Animation zeichnen
  drawAnimation();
}

// ohne Rückgabetyp
void handleInput () {
  // wenn beliebige Taste gedrückt
  if (keyPressed) {
    // erhöhe Frame um 1
    animationCounter++;
  // sonst ...
  } else {
    // setze zurück auf 0
    animationCounter = 0;
  }
}

// ohne Rückgabetyp
void drawAnimation () {
  // wenn Frame nicht 0 -> Animation aktiv
  if (animationCounter>0) {
    // Radius ist das dreifache des counters
    int r = animationCounter*3;
    // zeichne Kreis mit berechnetem Radius
    ellipse(300, 200, r, r);
  }
}
