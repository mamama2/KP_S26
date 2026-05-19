class Agent {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float r;
  float maxSpeed;
  float maxForce;
  
  Agent() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    r = 10.0;
    maxSpeed = random(2, 4);
    maxForce = random(0.1, 0.3);
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void applyForce(PVector force) {
    acceleration.add(force);
  }
  
  void seek(PVector target) {
    PVector desired = PVector.sub(target, location);
    desired.normalize();
    desired.mult(maxSpeed);
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxForce);
    applyForce(steer);
  }
  
  void display() {
    pushStyle();
    fill(150);
    strokeWeight(1);
    stroke(0);
    pushMatrix();
    translate(location.x, location.y);
    circle(0, 0, r);
    popMatrix();
    popStyle();
  }
  
  void follow(FlowField flow) {
    PVector desired = flow.lookup(location);
    desired.mult(maxSpeed);
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxForce);
    applyForce(steer);
  }
  
  void borders() {
    if (location.x < -r) location.x = width+r;
    if (location.y < -r) location.y = height+r;
    if (location.x > width+r) location.x = -r;
    if (location.y > height+r) location.y = -r;
  }
}
