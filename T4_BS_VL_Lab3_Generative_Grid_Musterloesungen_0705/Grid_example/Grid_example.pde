//KP - S26 - Musterlosüng - Grid aus vierecken
void setup() {
size(300, 300);
//frameRate(0.5);
//clear();
}
void draw() {
noLoop();
  stroke(0);
  
  for (int i = 0;i<100;i++){
 // translate(i+10,i+10);
  
  rect(0,0,width-i*10,height-i*10);
  }
  
  }
 // fill(255);
 //int j = 10;
  //for(int i = 0; i < 10; i++){
   // translate (300-j,300-j);
    //triangle(random(300), random(300), random(300), random(300), 150, 150);
     // rect(300,300,-frameCount*10,-frameCount*10);
     // j=j+10;
// translate(300-i+10,300-i+10);
//}
