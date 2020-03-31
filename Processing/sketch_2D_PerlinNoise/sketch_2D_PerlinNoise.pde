float xoff = 0;
float yoff = 600;
void setup(){
  size(600,600);
}

void draw(){
  background(0);
  fill(255);
  strokeWeight(5);
  ellipse(noise(xoff)*width, noise(yoff)*height, 20,20);
  
  xoff +=0.01;
  yoff +=0.01;
}
