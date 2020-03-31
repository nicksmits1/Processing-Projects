class MapEl {
  float x;
  float y;
  FBox box;
  MapEl(float xpos, float ypos) {
    this.x = xpos;
    this.y = ypos;
    box = new FBox(25,25);
    box.setPosition(x,y); 
  }
  
  void plus(){
    world.add(box);
  }
  
  void show(){
    world.add(box);
  }
  
    void touch(Sling sling){ 
    if(box.isTouchingBody(sling.circle)){
      world.remove(box);
    }
  }
}
