float x;
float y;
float t;
float px;
float py;
float tspeed = 0.01;
float xspeed = 1;
void setup(){
  size(600,600);
  background(255);
}

void draw(){
  y = noise(t);
  y = map(y,0,1,0,300);
  x+=xspeed;
  t+=tspeed;
  if(x>width || x<0){
    xspeed = xspeed*-1;
  }
  beginShape();
  vertex(x,y);
  vertex(px,py);
  endShape();
  px = x;
  py = y;
}
