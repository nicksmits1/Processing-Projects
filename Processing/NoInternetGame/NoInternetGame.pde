import fisica.*;
FWorld world;
ArrayList <Map> map = new ArrayList <Map>();
float h, dis;
Trex trex;
FBox box;
float speed = 2;
void setup() {
  Fisica.init(this); 
  world = new FWorld();
  
  size(1000, 600);
  frameRate(400);
  
  map.add(new Map(width - 20, height/2, 20, 60, speed));
  trex = new Trex();
  
  box = new FBox(10000000,20);
  box.setPosition(0,height/2 + 71);
  box.setStatic(true);
  box.setRestitution(0);
  world.add(box);
  
  trex.trex.setStatic(false);
  trex.show();
}

void draw() {
  background(255);
  trex.jump();
  world.step();
  world.draw();
  h = random(0, 3);
  dis = random(0, 3);  
  h = int(h);
  dis = int(dis);
  if(h == 0 || dis == 0){
    h = 20;
    dis = 80;
  }else if(h == 1 || dis == 1){
    h = 40;
    dis = 120;
  }else if(h == 2 || dis == 2){
    h = 60;
    dis = 140;
  } 
  for (int i=0; i<map.size(); i++) {
    Map cactus = map.get(i);
    cactus.show();
    if (cactus.x == 500) {
      map.add(new Map(width + dis, (height/2) + (60-h), 20, h, speed));
    }else if(cactus.x < 50){
      map.remove(i);
    }
    
    if(trex.xpos > cactus.x && trex.xpos < cactus.x + 20 && trex.ypos + 80 > cactus.y){
      //speed = 0;
      println(trex.ypos);

    }
  }
}
