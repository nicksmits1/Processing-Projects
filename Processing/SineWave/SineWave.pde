float x;
float y;
float t;
void setup(){
  size(600,600);
  background(255);
}

void draw(){
  t += 0.1;
  y = sin(t);
  y = map(y,0,1,0,height/8);
  x+=1;
  
  beginShape();
  translate(0,300);
  ellipse(x,y,20,20);
  endShape();
}
