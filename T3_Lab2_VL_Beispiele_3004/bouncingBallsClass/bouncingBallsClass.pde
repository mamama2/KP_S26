// Kreatives Programmieren mit Processing DMP KP_S26
// Example of the bouncing ball sketch with a class
// Martinez
// Two ball variables
Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;

void setup() {
  size(480, 270);
  
  // Initialize balls
  ball1 = new Ball(64);
  ball2 = new Ball(32);
  ball3 = new Ball(10);
  ball4 = new Ball(100);
}

void draw() {
  background(255);
  
  // Move and display balls
  ball1.move();
  ball2.move();
  ball3.move();
  ball4.move();
  ball1.display();
  ball2.display();
    ball3.display();

  ball4.display();

}
