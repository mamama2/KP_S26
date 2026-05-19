class Agent {
  float x, y, z;
  float speed, size;
  color col;
  float noiseScale = 500, noiseStrength = 600;
  PVector pre;
  Agent() {
    x = random(width);
    y = random(height);
    pre = new PVector(x, y);
    size = random(0.5, 2);
    speed = random(-2, 2);
    z = random(0.5, 0.8);
    
    col = cols[(int)random(cols.length)];
  }
  
  void display() {
    strokeWeight(size);
    stroke(col, 50);
    //point(x, y);
    line(pre.x, pre.y, x, y);
    pre.x = x;
    pre.y = y;
  }
  
  void update() {
    float angle = noise(x/noiseScale, y/noiseScale, z) * noiseStrength;
    x += cos(angle) * speed;
    y += sin(angle) * speed;
    
    z += 0.001;
  }
  
}
