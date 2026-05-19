 //DMP B6 KP S26 - Termin5 Demo: Flow fields 2
import java.util.Calendar;

color[] cols = {#0588A6, #F2BB13, #F2786D, #F24444, #79D1A8, #FFFFFF};
int seed = 1000;
long randomSeed;

Agent[] agents;

void setup() {
  size(500, 500);
  background(#E6D9BD);


  agents = new Agent[1000];
  
  randomSeed = (long)random(seed);

  noiseSeed(randomSeed);
  randomSeed(randomSeed);
  println(randomSeed);

  for (int i = 0; i < agents.length; i++) {
    agents[i] = new Agent();
  }
}

void draw() {

  for (Agent agent : agents) {
    agent.display();
    agent.update();
  }
  
  //saveFrame("Output2/####.png");
}
