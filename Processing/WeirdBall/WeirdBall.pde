int x = 500;
int y = 500;
int xdir = 0;
int ydir = 0;
int xbound = 10;
int ybound = 10;
void setup(){
  fullScreen();
  background(255);
}

void draw(){
float R = random(0, 255);
float G = random(0, 255);
float B = random(0, 255);
  x = x + xdir;
  y = y + ydir;
  ellipse(x, y, 20, 20);
  xdir++;
  ydir++;
  if(xdir > xbound) {
   xdir = xdir * -1;
   xbound = xbound + 10; 
   fill(R, G, B);
  }else if (ydir > ybound){
    ydir = ydir * -1;
    ybound = ybound + 5;
  }else if( y > height || y < 0){
   ydir = ydir * - 1;
   fill(R,G,B);
  }else if(x > width || x < 0){
    xdir = xdir * -1;
    fill(R,G,B);
  }
  
  
}
