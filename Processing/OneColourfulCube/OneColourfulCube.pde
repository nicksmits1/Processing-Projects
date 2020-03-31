import peasy.*;
PeasyCam cam;

Cube cube = new Cube(50,50,50,50);
void setup(){
  size(600,600,P3D);
  background(255);
  cam = new PeasyCam(this, 300);
}

void draw(){
  //background(255);
  //translate(100,100);
  //box(10);
  cube.show();
}
