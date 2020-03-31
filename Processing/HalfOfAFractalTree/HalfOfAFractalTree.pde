void setup(){
  size(600,600);
  background(51);
}

void draw(){
  stroke(255);
  translate(200, height);
  branch(100);
}

void branch(float len){
  line(0,0,0,-len);
  translate(0, -len);
  if(len > 5){
  pushMatrix();
  rotate(radians(45));
  branch(len * 0.67);
  rotate(radians(-45));
  branch(len * 0.67);
  popMatrix();
  }
}
