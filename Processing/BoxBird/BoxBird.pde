import peasy.*;
PeasyCam cam;
float num = 25;
float i;
float t;
float h;
float k = 0;
void setup(){
  background(0);
  size(600,600,P3D);
  cam = new PeasyCam(this,400);
}

void draw(){
  colorMode(HSB);
  fill(h,255,255);
  h ++;
  if(h == 255){
    h=0;
  }
  i+=0.1;
  t += 0.11;
  float x = sin(i);
  float mini = sin(t);
  x = map(x,0,1,0,50);
  mini = map(mini,0,1,0,50);
  background(0);
  translate(-25,0);
  box(50);
  pushMatrix();
  translate(50,x);
  box(50);
  translate(50,mini);
  box(50);
  translate(50,x);
  box(50);
  popMatrix();
  
  pushMatrix();
  translate(-50,x);
  box(50);
  translate(-50,mini);
  box(50);
  translate(-50,x);
  box(50);
  popMatrix();
 }
