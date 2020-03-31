import peasy.*;
PeasyCam cam;
Paddle pad, pad2;
Ball ball;
boolean started = false;
void setup(){
  size(1200, 1000, P3D);
  cam = new PeasyCam(this, 0, 0, 0, 420);
  pad = new Paddle(0, 0, 300, 100);
  pad2 = new Paddle(0, 0, -300, 100);
  ball = new Ball(0, 0, -300, 20);
}

void draw(){
  background(255);
  if (started == false){
    //text();
  }
  //lights();
  //fill(255);
  noFill();
  box(700);
  ball.display();
  pad.display();
  pad.move("arrows");
  pad2.display();
  pad2.move("wasd");
  ball.checkCollide(pad);
  ball.edges();
  ball.checkCollide(pad2);
}
