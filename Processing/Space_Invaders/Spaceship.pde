class Spaceship {
  PVector pos, vel;
  float w, h;
  Spaceship(float x, float y, float w, float h) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    this.w = w;
    this.h = h;
  }

  void display() {
    fill(0,255,0);
    rect(pos.x, pos.y, w, h, 10, 10, 0, 0);
    rect(pos.x+(w-60), pos.y -20, 20, 20, 30, 30, 0, 0);
  }
  void move() {
    pos.add(vel);
    if (keyPressed) {
      if (keyCode == LEFT) {
        vel.x = -3;
      } else if (keyCode == RIGHT) {
        vel.x = 3;
      } else {
        vel.x = 0;
      }
    }
    
    if (pos.x <= 0 || pos.x >= width-w){
      vel.x *= -1;
    }
  }
  
  float getXPos(){
    return this.pos.x; 
  }
}
