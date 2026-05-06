// KP - S26 - DMP Musterlösung
// Aufgabe 8 RECAP Uebungsblatt 4  Teil3 - Ferig

int schritt = 6;
int xRaumschiff; 
int yRaumschiff;
boolean gestartet = false; 
// Variablen für die beiden Bilder deklarieren
PImage meinPlanet;         
PImage meinNebel;
// Fluggeschwindigkeit deklarieren und initialisieren
float v = 4;
// Startpositionen der Objekte deklarieren und initialisieren
float xPlanet = 40;
float yPlanet = 0;
float xNebel = 120;
float yNebel = 35;
int score = 0;

void setup() {  
  size(280, 280);
  smooth();
  xRaumschiff = width/2;
  yRaumschiff = height-25;  
  // Ursprung für die Anzeige von Bildern ins Zentrum des Bildes setzen
  imageMode(CENTER);
  // Bilder in die bereit gestellten Variabeln einmalig !!! laden
  meinPlanet = loadImage("planet.png");
  meinNebel = loadImage("galaxy.png");
}

void draw() {
  background(150);
  if (gestartet == false) {
    fill(255);
    textSize(12);
    textAlign(LEFT);
    text("'s' für Start", 10, 20);
    text("bewegen mit den Pfeiltasten links | rechts", 10, 40);
  }
  else {
    // Planet bewegen 
    yPlanet = yPlanet + v;
    // falls Kollision mit Raumschiff Punkte abziehen und zurück an oberen Rand
    if (dist(xPlanet, yPlanet, xRaumschiff, yRaumschiff) < 35) {
      yPlanet = 0;
      xPlanet = random(0, width);
      score = score - 20;
      // falls Score kleiner 0 Spiel zurücksetzen
      if (score < 0) {
        score = 0;
        gestartet = false;
        yPlanet = 0;
        yNebel = 0;
      }
    }
    // falls Planet unten verschwunden an oberen Rand mit zufälliger xPosition setzen
    if (yPlanet > height) {
      yPlanet = 0;
      xPlanet = random(0, width);
    }
    // Nebel bewegen
    yNebel = yNebel + v;
    // falls Kollision mit Raumschiff Punkte abziehen und zurück an oberen Rand
    if (dist(xNebel, yNebel, xRaumschiff, yRaumschiff) < 45) {
      yNebel = 0; 
      xNebel = random(0, width);
      score = score + 10;
    }
    // falls Nebel unten verschwunden an oberen Rand mit zufälliger xPosition setzen
    if (yNebel > height) {
      yNebel = 0; 
      xNebel = random(0, width);
    }
    // Bilder an der aktuellen Position anzeigen
    image(meinPlanet, xPlanet, yPlanet);
    image(meinNebel, xNebel, yNebel);
    // Score anzeigen
    textSize(20);
    textAlign(RIGHT);
    text("Score: "+score, width-20, 20);
  }
  // Raumschiff an der aktuellen Position anzeigen
  raumschiffZeichnen(xRaumschiff, yRaumschiff);
}

// benutzerdefinierte Funktion zum Zeichnen eines Raumschiffs
void raumschiffZeichnen(int xPos, int yPos) {
  translate(xPos, yPos);  // Zeichnenursprung verschieben
  fill(57, 63, 170);
  noStroke();
  arc(0, 0, 20, 60, PI, TWO_PI);
  rect(-10, 0, 20, 10);
  fill(183, 187, 242);
  arc(0, -10, 10, 30, PI, TWO_PI);
  fill(222, 58, 118);
  arc(-10, 20, 10, 50, PI, PI+ HALF_PI);
  arc(10, 20, 10, 50, PI+ HALF_PI, TWO_PI);
  translate(-xPos, yPos);  // Zeichnenursprung zurück verschieben
}  

// Steuerung des Raumschiffs per Key-Ereignisse
void keyPressed() {
  if (key == 's' || key == 'S') {
    gestartet = true;
  }
  if (gestartet == true) {
    if (keyCode == LEFT) {
      xRaumschiff = xRaumschiff - schritt;
      if (xRaumschiff < 0) {
        xRaumschiff = width;
      }
    }
    if (keyCode == RIGHT) {
      xRaumschiff = xRaumschiff + schritt;
      if (xRaumschiff > width) {
        xRaumschiff = 0;
      }
    }
  }
}
