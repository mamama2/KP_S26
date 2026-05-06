// KP - S26 - DMP Musterlösung
// Aufgabe 8 RECAP Uebungsblatt 4 RECAP Teil 1
int schritt = 3;
int xRaumschiff;            // x-Position des Raumschiffs

void setup() {  
  size(280, 140);
  smooth();
  xRaumschiff = width/2;  // x-Startposition festlegen
}

void draw() {
  background(150);
  raumschiffZeichnen(xRaumschiff,height-25);
}

void raumschiffZeichnen(int xPos, int yPos) {
  translate(xPos, yPos);  // Zeichnenursprung verschieben
  fill(57,63,170);
  noStroke();
  arc(0, 0, 20, 60, PI, TWO_PI);
  rect(-10,0,20,10);
  fill(183,187,242);
  arc(0, -10, 10, 30, PI, TWO_PI);
  fill(222,58,118);
  arc(-10, 20, 10, 50, PI, PI + HALF_PI);
  arc(10, 20, 10, 50, PI+ HALF_PI, TWO_PI);
  translate(-xPos, yPos);  // Zeichnenursprung zurück verschieben
  
}  

void keyPressed() {
  if (keyCode == LEFT) {
     xRaumschiff = xRaumschiff - schritt;
     if (xRaumschiff < 0) {
        xRaumschiff = width;
     } 
  }
}
