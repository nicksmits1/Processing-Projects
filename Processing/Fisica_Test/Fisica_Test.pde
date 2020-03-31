import fisica.*;

FWorld world;
FCircle circ;
FBox box;

void setup(){
  size(600,600);
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0,300);
  world.setEdges();
  world.setEdgesRestitution(0.8);
  circ = new FCircle(30);
  circ.setPosition(width/2,height/2);
  world.add(circ);
  if(mousePressed){
  box = new FBox(20,20);
  box.setPosition(mouseX,mouseY);
  box.isStatic();
  world.add(box);
  }
}

void draw(){
  background(0);
  world.step();
  world.draw();
}
