// DMP KP S26 - Scaling Example T5
float x, y;
float scale = 100;
float strength = 200;

PShape wave;

void setup() {
  size(500, 500);
  background(255);
  
  y = height/2;
  wave = createShape();
  
  noiseSeed(0);
  // 0 & 0.5 doesn't change the influence
  // the lower (ex. 0.2), the smoother
  // the higher (ex. 0.7), the chunkier
  //noiseDetail(0, .2);
  
  wave.beginShape();
  for (float x = 0; x < width; x++) {
    y = noise(x/scale) * strength;
    wave.vertex(x, y + height/2);
  }
  wave.endShape();
  
  
}

void draw() {
  background(255);
  
  shape(wave);
  
  circle(x, y + height/2, 10);
  
  x++;
  y = noise(x/scale) * strength;
  
  if (x > width) x = 0;
  
  

  
}
