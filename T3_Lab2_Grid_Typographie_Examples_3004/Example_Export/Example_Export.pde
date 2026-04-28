//KP - S26 - DMP
//Lab2: Exporting your designs 
//Make Movie out of all the Frames: Go to Tools->Movie Maker-> 
//select folder and create Movie
void setup() {
  size(400, 400);
  background(0);
  noStroke();
  // frameRate(10);
  fill(255, 10);
  rectMode(CENTER);
}
void draw() {
  translate(width/2, height/2);
  rotate(random(TWO_PI));
  rect(0, 0, random(10, 300), 20);
  
  saveFrame("Output/###.png");
}
