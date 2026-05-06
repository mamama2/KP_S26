// KP - S26 - DMP Musterlösung
// Aufgabe 8 RECAP Uebungsblatt 4 Teil2

int schritt = 4;
int xRaumschiff;            
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

void setup() {  
  size(280, 280);
  smooth();
  xRaumschiff = width/2;  
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
    text("'s' für Start", 10, 20);
    text("bewegen mit den Pfeiltasten links | rechts", 10, 40);
  }
  else {
    // Planet bewegen und allenfalls an oberen Rand mit zufälliger xPosition setzen
    yPlanet = yPlanet + v;
    if (yPlanet > height) {
       yPlanet = 0;
       xPlanet = random(0,width); 
    }
    // Nebel bewegen und allenfalls an oberen Rand mit zufälliger xPosition setzen
    yNebel = yNebel + v;
    if (yNebel > height) {
       yNebel = 0; 
       xNebel = random(0, width);
    }
    // Bilder an der aktuellen Position anzeigen
    image(meinPlanet,xPlanet,yPlanet);
    image(meinNebel,xNebel,yNebel);
  }
  // Raumschiff an der aktuellen Position anzeigen
  raumschiffZeichnen(xRaumschiff, height-25);
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
