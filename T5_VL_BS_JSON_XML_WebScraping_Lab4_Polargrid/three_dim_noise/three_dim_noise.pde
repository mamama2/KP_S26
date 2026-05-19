 //DMP B6 KP S26 - Termin5 3-Dim Demo flowfields 
//color[] cols = {#0588A6, #F2BB13, #F2786D, #F24444, #79D1A8, #FFFFFF};
color[] cols = {#FFFFFF};

Agent[] agents;

void setup() {
  size(1080, 1080);
  background(0);


  agents = new Agent[1000];
  
  noiseSeed(0);
  randomSeed(0);

  for (int i = 0; i < agents.length; i++) {
    agents[i] = new Agent();
  }
}

void draw() {

  for (Agent agent : agents) {
    agent.display();
    agent.update();
  }
  
  saveFrame("Output2/####.png");
}
