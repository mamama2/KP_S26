// DMP KP S26 - static Noise T5

color[] cols = {#0588A6, #F2BB13, #F2786D, #F24444, #79D1A8, #FFFFFF};


Agent[] agents;

void setup() {
  size(500, 500);
  background(#E6D9BD);


  agents = new Agent[2000];
  
  //noiseSeed(0);
  //randomSeed(0);

  for (int i = 0; i < agents.length; i++) {
    agents[i] = new Agent();
  }
  
  noLoop();
}

void draw() {

  for (Agent agent : agents) {
    agent.display();
  }
}
