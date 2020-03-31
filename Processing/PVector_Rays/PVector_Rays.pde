Ray[] ray;
void setup(){
  ray = new Ray[360];
  size(600,600);
  for(int i=0;i<360;i++){
  ray[i] = new Ray(0);
  }
}

void draw(){
  background(255);
  translate(mouseX,mouseY);
  for(int i=0;i<360;i++){  
  ray[i].show(i);
  }
}
