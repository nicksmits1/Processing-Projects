class Alien {
  PVector pos, orPos;
  float w, h;
  int hp;
  PImage a;
  Alien(float x, float y) {
    pos = new PVector(x, y);
    this.w = 30;
    this.h = 46;
    orPos = new PVector(x, y);
    hp = 2;
    a = loadImage("Alien.jpg");
    //a.resize(30, 30);
  }
  float f = 1;
  float g = 0;
  float x = 1;

  void display() {
    pushMatrix();
    translate(f, g);
    image(a, pos.x, pos.y);
    //rect(pos.x, pos.y, w, h);
    popMatrix();
    f+=0.2;
    if (f > (width - (10*30))/11) {
      f = 0;
      g++;
    }
  }

  void hit(ArrayList<Bullet> b) {
    for (int i=0; i<b.size(); i++) {
      if ((b.get(i).pos.x > pos.x && b.get(i).pos.x < pos.x +w) && (b.get(i).pos.y > pos.y) && (b.get(i).pos.y < pos.y + h)) {
        hp --;
        print(hp);
        rBullet(i);
      }
      if (hp < 2) {
        pos.y = 10000;
      }
    }
  }

  public void Ashoot() {
    int i = int(random(0, 1000));
    if (i == 0) {
      b.add(new Bullet(this.pos.x, this.pos.y, 4));
    }
  }
}
