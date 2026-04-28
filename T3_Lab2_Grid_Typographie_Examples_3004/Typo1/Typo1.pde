// B6_S26 KP - DMP
//Lab2: Design Basics Teil 2. BS Typo 1 (Typography)
//Martinez

//Step1: load Text from filesystem /dat/crazy.txt
//Step2: Split the text in words
//Step3: For ech word (for loop)
//I create a new layer for each word (pop/pushMatrix)
//and rotate the layer (a random value from 0 to 2PI)
//use the save function to save the result as a png
String text;
String[] words;
int margin = 50;
void setup() {
  size(1200, 900);
  background(255);
  colorMode(HSB, 255, 255, 255);
  text = join(loadStrings("crazy.txt"), ' ');
  words = split(text, ' ');
  fill(0);
  noLoop();
  textAlign(CENTER);
}
void draw() {
  for (int i = 0; i<words.length; i++) {
    fill(random(255), 255, 255);
    pushMatrix();
    translate(random(margin, width-margin), random(margin, height-margin));
    rotate(random(TWO_PI));
    textSize(46);
    text(words[i], 0, 0);
    popMatrix();
  }
  
  save("output.png");
}
