class Paddle{
  float x;
  float y;
  float xdir;
  float ydir;
  
  Paddle(){
    xdir =0;
    ydir =0;
    x = 100;
    y = 500;
  }
  void show(){
    x = x + xdir;
    y = y + ydir;
    rect(x,y,100,20);
  } 
  
  void move(){
      if(keyPressed){
      if(keyCode == RIGHT){
        x += 3;
      }else if(keyCode == LEFT){
        x+= -3;
      }
      }
  }

}
