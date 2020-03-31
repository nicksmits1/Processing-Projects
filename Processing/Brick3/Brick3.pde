int num = 25;
Ball ball;
Paddle paddle = new Paddle();
Bricks[] bricks = new Bricks[num];
//Bricks[] bricks = new Bricks[num];
void setup(){
  size(600,600);
  background(255);
  ball = new Ball();
  
  //for(int i = 0; i < num-1;i++){
  //  bricks[i] = new Block(x,y, 20,20);
  //  x += 25;
  //  count++;
  //  if (count == 25){
  //    y += 22;
  //    x = 10;
  //    count = 0;
  //  }
  //}
  }
  
void draw(){
  background(255);
  ball.show();
  paddle.show();
  ball.Pbounce(paddle);
  paddle.move();
  
  for(int i  =0; i >25;i++){
  hitBrick(bricks[i]);
  bricks[i].display();
  }
  //for(int i = 0;i < num - 1;i++){
  //  bricks[i].show();
  //}
}

  
