// Beispiel Keyboard Visuals Animation  
// Kreatives Programmieren mit Processing DMP KP_S26
// Martinez

Animation a1, a2, a3, a4, a5;

void setup () {
  size(600, 400);
  a1 = new Animation('a');
  a2 = new Animation('b');
  a3 = new Animation('c');
  a4 = new Animation('d');
  a5 = new Animation('e');
}

void draw () {
  background(0);
  a1.handleInput();
  a1.drawAnimation1();

  a2.handleInput();
  a2.drawAnimation2();

  a3.handleInput();
  a3.drawAnimation3();

  a4.handleInput();
  a4.drawAnimation4();
  
  a5.handleInput();
  a5.drawAnimation5();
  
}
