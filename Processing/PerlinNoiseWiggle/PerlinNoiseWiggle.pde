float zoff;
void setup(){
  size(600,600);
  background(0);
}

void draw(){
  background(0);
  translate(300,300);
  stroke(255);
  strokeWeight(2);
  noFill();
  beginShape();
  for(float i=0;i<TWO_PI;i+=0.1){
    float maxsize = map(sin(i),0,1,0.1,1);
    float xoff = map(cos(i), -1,1,0,maxsize);
    float yoff = map(sin(i),-1,1,0,maxsize);
    float r = noise(xoff,yoff,zoff);
    r = map(r,0,1,50,100);
    float x = r * cos(i);
    float y = r * sin(i);
    vertex(x,y);
  }
  endShape(CLOSE);
  if(dist(mouseX, mouseY, 300,300)<100){
  zoff += 0.05;
  }else{
  zoff += 0.01;
  }
}
