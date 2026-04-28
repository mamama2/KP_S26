// Beispiel Anwendung von Klassen 
// Kreatives Programmieren mit Processing DMP KP_S26
// der counter beschreibt in welchem "Frame" der Animation man sich gerade befindet
// Martinez
Animation a;

void setup () {
  size(600, 400);
  // Frame auf Anfang setzen
 a = new Animation('a');
}

void draw () {
  // Hintergrund füllen
  background(0);
  // Eingabe verarbeiten
  a.handleInput();
  // Animation zeichnen
  a.drawAnimation1();
}
