import fisica.*;
FWorld world;
Sling sling;
MapEl mapEl;
int num = 7;
float x,y;
MapEl map[][];
//PImage bird, box, slg;
//bird = loadImage("angrybird.jpg");
void setup() {
  size(1000, 600);
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 300);
  world.setEdges();
  world.setEdgesRestitution(0.8);
  world.setEdgesFriction(5);
  sling = new Sling();
  sling.show();
  x = 700;
  y= 555;
  map = new MapEl[num][num];
  
  for(int i=0;i<num-1;i++){
    for(int k=0;k<num-1;k++){
      map[i][k] = new MapEl(x,y);
      x += 25;
      map[i][k].show();
    }
    x = 700;
    y -= 25;
  }
}
void draw() {
  background(255);
  world.step();
  world.draw();
  sling.letGo();
  if(keyPressed){
    if(keyCode == TAB){
      mapEl = new MapEl(mouseX,mouseY);
      mapEl.plus();
    }
    }
    for(int i=0;i<num-1;i++){
      for(int k=0;k<num-1;k++){
        map[i][k].touch(sling);
      }
    }
  }
