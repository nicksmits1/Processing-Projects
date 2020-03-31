class Ball{
  float bx;
  float by;
  float dia;
  float xdir;
  float ydir;
  Ball(){
    bx = width/2;
    by = height/2;
    dia = 20;
  }
  void show(){
    bx = bx + xdir;
    by = by + ydir;
    ellipseMode(CENTER);
    ellipse(bx,by,dia,dia);
    
    if(keyPressed){
      if(keyCode == SHIFT){
        xdir = random(-5,5);
        ydir = random(-5,5);
      }
    }
  }
  
  void walls(){
    if(by < 0 || by > height){
      ydir = ydir *-1;
    }else if(bx > height || bx < 0){
      ydir = 0;
      xdir = 0;
      bx = width/2;
      by = height/2;
    }
  }
  void intersectR(Paddle paddleR){
    if(bx > paddleR.x && bx < paddleL.x + paddleL.w && by > paddleR.y && by < paddleR.y + paddleR.h){
      xdir = xdir * -1;
      //ydir = ydir * -1;
    }
  }
    void intersectL(Paddle2 paddleL){
    if(bx < paddleL.x && bx > paddleL.x + 20 && by > paddleL.y && by < paddleL.y + paddleL.h){
      xdir = xdir * -1;
      //ydir = ydir * -1;
    }
    }
}
