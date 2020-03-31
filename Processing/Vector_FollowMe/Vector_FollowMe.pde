Player p;
Follower f;
boolean eaten = false;
void setup() {
  size(600, 600);
  p = new Player(40);
  f = new Follower();
}

void draw() {
  background(255);
  if (!eaten) {
    p.show();
    f.show();
    f.follow(p);
  } else {
    text("Nom", width/2, height/2);
  }
}
