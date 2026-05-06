//KP - S26 - VL Beispiele: Confetti Export PNG

int counter = 0;

void setup() {
  size(400, 400);
  smooth();
  noStroke();
  background(255);
}

void draw() {
  stroke(255, mouseX);
  fill(random(255), random(255), random(255), mouseY);
  ellipse(random(width), random(height), 50, 50);

  counter++;
  if (counter > 200) {
    // Nach 200 Kreisen wird die Zeichenfl�che gel�scht
    background(255);
    counter = 0;
  }
}

void mousePressed() {
  saveFrame("confetti-#####.png");
}
