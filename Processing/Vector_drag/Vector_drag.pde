PVector center, mouse;
void setup(){
  size(600,600);
}

void draw(){
  background(255);
  center = new PVector(height/2, width/2);
  
  if(mousePressed){
    mouse = new PVector(mouseX, mouseY);
    mouse.sub(center);
    translate(center.x, center.y);
    line(0, 0, mouse.x, mouse.y);
  }
}
