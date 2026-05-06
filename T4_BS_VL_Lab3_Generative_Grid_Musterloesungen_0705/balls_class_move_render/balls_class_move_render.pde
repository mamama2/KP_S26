//KP - S26 - VL Beispiele: Klassen & Objekte. Class Ball
// Klasse Ball (in eigenem Reiter "Ball")
// Hauptprogramm
Ball[] balls = new Ball[5]; // neues Array

void setup() {
  // Array befüllen mit Objekten
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
}

void draw() {
  background(100);

  // Funktionen der Objekte regelmäßig aufrufen
  for (int i = 0; i < balls.length; i++) {
    balls[i].render();
    balls[i].move();
  }
}

class Ball
{
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;

  // Konstruktor
  // erzeugt Ball an zufälliger Position
  // mit zufälliger Geschwindigkeit
  Ball() 
  {
    xpos = random(10, width-10);
    ypos = random(10, height-10);
    xspeed = random(0,3);
    yspeed = random(0,3);
  }

  // Methode zum Zeichnen
  void render() {
    noStroke();
    ellipse(xpos, ypos, 20, 20);
  }

  // Methode zum Bewegen, inkl. Kollision
  void move() {
    xpos += xspeed;
    ypos += yspeed;

    if (xpos < 10 || xpos > width-10) {
      xspeed = -xspeed;
    }
    if (ypos < 10 || ypos > height-10) {
      yspeed = -yspeed;
    }
  }
}
