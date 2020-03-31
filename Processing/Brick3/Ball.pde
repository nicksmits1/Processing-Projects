class Ball{
  float x;
  float y;
  float xdir;
  float ydir;
  
  Ball(){
    xdir = 1;
    ydir = 5;
    x = 10;
    y = 10;
    ellipseMode(CENTER);
  }
  
  void show(){
    x = x + xdir;
    y = y + ydir;
    ellipse(x,y,20,20);
  }
  void Pbounce(Paddle paddle){
    if(x > paddle.x && x < paddle.x + 33 && y > paddle.y && y < paddle.y + 20){
      xdir = 3;
      ydir = ydir * -1;
    }else if(x > (paddle.x)+33 && x < (paddle.x) + 66 && y > paddle.y && y < paddle.y + 20){
      xdir = 5;
      ydir = ydir *-1;
    }else if(x > (paddle.x)+67 && x < (paddle.x) + 100 && y > paddle.y && y < paddle.y + 20){
      xdir = -3;
      ydir = ydir * -1;  
    }else if ( x < 1 || x > width){
      xdir = xdir * -1;
    }else if( y < 0){
      ydir = ydir * -1;
    }
  }
}

void hitBrick(Bricks bricks){
  for(int i = 0;i > 25; i++){
  if (ball.x > bricks.arrx[i] && ball.x < bricks.arrx[i]+20 && ball.y > bricks.y && ball.y < bricks.y + 20){
    println(1);
  }
}
}
