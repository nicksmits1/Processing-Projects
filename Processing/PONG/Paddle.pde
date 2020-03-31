class Paddle{
  float x;
  float y;
  float w;
  float h;
  Paddle(float xpos, float ypos){
    x = xpos;
    y = ypos;
    h = 100;
    w = 20;
  }
  
  void show(){
    rect(x,y,w,h);
    
    if(keyPressed){
      if(keyCode == RIGHT){
        y+=2;
      } if(keyCode == LEFT){
        y-=2;
      }
    }
  }
}
