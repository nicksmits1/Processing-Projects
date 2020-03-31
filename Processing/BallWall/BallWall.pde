int x = 100;
int y = 100;
int xdir = 1;
int ydir = 5;
int xbound = 20;
int ybound = 0;

void setup(){
  fullScreen();
  background(255);
}

void draw(){
  translate(width/2, height/2);
  x = x + xdir;
  y = y + ydir;
  ellipse(x, y, 20, 20);
  xdir++;
  if(xdir > xbound){
    xdir = xdir * -1;
    ydir = ydir * -1;
  }else if( ydir == 20){
    ydir--;
  }else if(xdir == 20){
    //ydir--;
  }
}
