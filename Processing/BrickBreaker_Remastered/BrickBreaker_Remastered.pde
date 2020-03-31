Paddle paddle;
Bricks bricks[][];
Ball ball;
int rows = 4;
int cols = 20;
void setup(){
  size(600,600);
  float y = -20;
  ball = new Ball(width/2 - 15, height/2 - 15);
  bricks = new Bricks[rows][cols];
  paddle = new Paddle(height - 50 , width/2 - 50);
  for(int i=0;i<rows-1;i++){
    float x = -20;
    y += 200/rows;
    for(int j=0;j<cols-1;j++){
      x += width/cols;
      bricks[i][j] = new Bricks(x, y);
    }
  }
}
void draw(){
  background(255);
  paddle.show();
  paddle.update();
  ball.show();
  ball.update();
  for(int i=0;i<rows-1;i++){
    for(int j=0;j<cols-1;j++){
      bricks[i][j].show();
      bricks[i][j].hit();
    }
  }
}
