class Bricks{
  float x;
  float y;
  float h = 20;
  boolean hit = false;
  Bricks(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void show(){
    rect(x, y, h, h);
  }
  
  void hit(){
    if(ball.x > x && ball.x + ball.r < x + h){
     x += 2000;
     ball.ydir *= -1;
    }
  }
}
