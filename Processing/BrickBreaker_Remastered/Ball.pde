class Ball{
  float x;
  float y;
  float r = 15;
  float xdir = 0;
  float ydir = 3;
  Ball(float x, float y){
    this.x = x;
    this.y = y;
  }
  void show(){
    x += xdir;
    y += ydir;
    ellipseMode(CENTER);
    ellipse(x,y,r, r);
  }
  
  void update(){
    if(y + r -1 > paddle.y && (x+r-1 > paddle.x && x+r < paddle.x + paddle.w)){
      ydir *= -1;
    }
  }
}
