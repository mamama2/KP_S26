class Agent {
  float x, y;
  float speed, size;
  color col;
  float noiseScale = 1000, noiseStrength = 5000;
  Agent() {
    x = random(width);
    y = random(height);
    x = width/2;
    y = height/2;
    size = random(0.5, 1);
    speed = random(-5, 5);
    
    col = cols[(int)random(cols.length)];
  }
  
  void display() {
    strokeWeight(size);
    stroke(col);
    point(x, y);
  }
  
  void update() {
    float angle = noise(x/noiseScale, y/noiseScale) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed;
  }
  
}
