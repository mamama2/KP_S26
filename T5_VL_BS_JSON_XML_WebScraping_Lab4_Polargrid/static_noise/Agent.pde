class Agent {
  float x, y;
  float speed;
  color col;
  float noiseScale = 40, noiseStrength = 100;
  int len = 55;
  Agent() {
    x = random(width);
    y = random(height);
    speed = random(-2, 2);
    
    col = cols[(int)random(cols.length)];
  }
  
  void display() {
    fill(col);
    noStroke();
    beginShape();
    for (int i = 0; i < len; i++) {
      update();
    }
    endShape();
  }
  
  void update() {
    float angle = noise(x/noiseScale, y/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed;
    curveVertex(x, y);
  }
  
}
