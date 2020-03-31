float x =300;
float y =10;
float xspeed = random(0,10);
float yspeed = random(0,10);
void setup(){
  size(600,600);
  background(255);
}

void draw(){
  x=x+xspeed;
  y=y+yspeed;
  rect(x,y,40,40);
  float R = random(0, 255);
  float G = random(0, 255);
  float B = random(0, 255);
  if(x > width || x<0){
    xspeed = xspeed* -1;
    fill(R,G,B);
  }else if(y>height || y<0){
    yspeed = yspeed *-1;
    fill(R,G,B);
  }
}
