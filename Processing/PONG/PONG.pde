Paddle paddleR;
Paddle2 paddleL;
Ball ball;
void setup(){
  size(600,600);
  paddleR = new Paddle(0,height/2);
  paddleL = new Paddle2(width-21,300);
  ball = new Ball();
}

void draw(){
  background(255);
  paddleL.show();
  paddleR.show();
  ball.show();
  ball.walls();
  ball.intersectR(paddleR);
  ball.intersectL(paddleL);
}
