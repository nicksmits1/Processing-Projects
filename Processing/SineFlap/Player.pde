class Player {
  PVector pos, vel, acc;
  float r;
  Player(float x, float y, float r) {
    this.pos = new PVector(x, y);
    this.vel = new PVector(0, -2);
    this.acc = new PVector(0, 0.2);
    this.r = r;
  }

  void display() {
    ellipse(pos.x, pos.y, r, r);
  }
  void move() {
    pos = pos.add(vel);
    vel = vel.add(acc);
  }
}
