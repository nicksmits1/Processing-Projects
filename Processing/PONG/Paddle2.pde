class Paddle2{
  float x;
  float y;
  float w;
  float h;
  Paddle2(float xpos, float ypos){
    x = xpos;
    y = ypos;
    h = 100;
    w = 20;
  }
  
  void show(){
    rect(x,y,w,h);
    
    if(keyPressed){
      if(keyCode == DOWN){
        y+=2;
      }else if(keyCode == UP){
        y-=2;
      }
    }
  }
}
