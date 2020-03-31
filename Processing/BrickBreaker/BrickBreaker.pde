Puck puck;
Paddle paddle;
int xell = width/2;
int yell = height/2;
int dirxell = 0;
int diryell = 1;
void setup(){
  size(600,600);
  background(255);
  puck = new Puck();
  paddle = new Padlle();
}


void draw(){
  Paddle();
  puck.show();
  puck.update();
  puck.edges();
  //puck.checkpaddle();
}
void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT){
      direction += 5;
    }
    if(keyCode == LEFT){
      direction += - 5;
    }
  }
}
void keyReleased(){
  if(key == CODED){
    if(keyCode == LEFT){
      direction = 0;
    }
    if(keyCode == RIGHT){
      direction = 0;
    }
  }

  
  
  
