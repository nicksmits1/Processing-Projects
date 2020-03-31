class Follower {
  PVector pos, dir;
  float r;

  Follower() {
    pos = new PVector(random(0, width), random(0, height));
    dir = new PVector(0,0);
    r = 20;
  }

  void show() {
    pos.add(dir);
    fill(0, 255, 0);
    circle(pos.x, pos.y, r);
  }

  void follow(Player p) {
    dir = p.pos.sub(pos);
    dir.limit(4);
  }
  
}
