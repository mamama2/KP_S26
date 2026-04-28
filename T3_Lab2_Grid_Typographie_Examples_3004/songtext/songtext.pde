// KP - S26 - DMP
//Lab2: Design Basics Teil 2. Typographie File Read example
// Martinez
String text;
String[] words;

void setup() {
  size(400, 400);
  background(255);
  fill(0);
  text = join(loadStrings("crazy.txt"), ' ');
  words = split(text, ' ');
  println(words[2]);
  textAlign(CENTER);
  noLoop();
}
void draw() {
  textSize(20);

  for (int i = 0; i<words.length; i++) {
    fill(random(255), random(255), random(255));
    pushMatrix();
    translate(random(width), random(height));
    rotate(random(TWO_PI));
    text(words[i], 0, 0 );
    popMatrix();
  }
}
