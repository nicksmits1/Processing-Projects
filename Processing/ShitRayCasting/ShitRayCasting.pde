float r = 450;
float bx, by, x, y;
void setup(){
  size(600,600);
  bx = 200;
  by = 100;
}

void draw(){
  background(255);
  fill(0);
  rect(bx,by,20,100);
  translate(width/2,height/2);
  beginShape();
  noFill();
  for(float i=0;i<TWO_PI;i+=0.05){
  x = r * cos(i);
  y = r * sin(i);
  float mx = mouseX - width/2;
  float my = mouseY - height/2 ;
  //vertex(x,y);
  stroke(0);
  intersection(x,y,mx,my,bx,by,bx-20,by-100);
  line(x,y,mx,my);
  }
  endShape();
}

void intersection(float x1, float y1, float x2, float y2, float x3,float y3, float x4, float y4){
  if((x1*y2-y1*x2)*(x3-x4) - (x1-x2)*(x3*y4-y3*x4) / (x1-x2)*(y3-y4)-(y1-y2)*(x3-x4)<1){
    x = bx;
  }
}
