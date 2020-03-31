class Trex {
  FBox trex;
  float y, w, h, tick, pos, xpos, ypos;
  float x;
  Trex() {
    x = 200;
    w = 30;
    h = 80;
    y = height/2 - 20;

    trex = new FBox(w, h);
    trex.setPosition(x, y);
    trex.setRotatable(false);
  }

  void show() {
    world.add(trex);
    xpos = trex.getX();
    ypos = trex.getY();
    
  }

  void jump() {
        pos = trex.getY();
    if (keyPressed && tick < 2) {
      if(keyCode == UP){
      trex.addImpulse(0, -600);
      tick++;
      }
    }
    
    if(pos == 321.10004){
      tick = 0;
    }
  }
}
