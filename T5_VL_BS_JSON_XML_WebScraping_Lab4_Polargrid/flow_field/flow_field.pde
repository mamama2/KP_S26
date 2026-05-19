// KP S26 - Generative Art Workshop - Example 3 
// Flowynoise - Marcos Martinez
FlowField flowfield;
Agent[] agents;
int cols = 20, rows = 20;

PShape arrow;

void setup() {
  size(500, 500);
  background(255);

  flowfield = new FlowField(cols, rows);
  arrow = loadShape("arrow.svg");
  arrow.disableStyle();

  agents = new Agent[1000];

  for (int i = 0; i < agents.length; i++) {
    agents[i] = new Agent();
  }

  strokeWeight(5);

  //noLoop();
}

void draw() {
  background(255);

  // image is 100x100, scaled to 50%, so translate to half of that
  translate(12.5, 12.5);
  flowfield.display();

  for (Agent agent : agents) {
    agent.update();
    agent.borders();
    agent.follow(flowfield);
    agent.display();
  }
  
  //saveFrame("Output/####.png");
}
