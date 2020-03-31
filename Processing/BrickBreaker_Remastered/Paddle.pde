class Paddle{
  float x;
  float y;
  float w = 100;
  float h = 20;
  Paddle(float y, float x){
    this.x = x;
    this.y = y;
  }
  
  void show(){
    rect(x, y, w, h);
  }
  void update(){
    if(keyPressed){
      if(keyCode == RIGHT){
        x += 3;
      }else if(keyCode == LEFT){
        x -= 3;
      }
    }
  }
}
