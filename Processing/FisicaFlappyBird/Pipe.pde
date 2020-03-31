class Pipe {
  float x;
  float y;
  float by;
  float h;
  float w;
  float gap;
  float px, py;
  int hint, wint;
  Pipe(float dis) {
    h = random(200, 550);
    w = 40;
    gap = 80;
    x = 500 + dis;
    y = 0;
    by = h + gap;
  }

  void show() {
    if (!dead) {
      x -=2;
    } else if (dead) {
      x += 0;
    }
    fill(0,255,0);
    rect(x, y, w, h);
    rect(x - 10, (y + h)-20, w + 20, 20);
    fill(0);
    rect(x+5, y, 1, h - 40);
    fill(0,255,0);
    rect(x, by, w, height);
    rect(x - 10, by, w + 20, 20);
  }

  void touched(Bird bird) {
    px = bird.circle.getX();
    py = bird.circle.getY();
    if ((py < h || py > by ) && (px > x && px < x+w) ) {
      bird.circle.setPosition(bird.x, bird.y);
      bird.circle.setStatic(true);
      bird.circle.setFill(255, 0, 0);
      dead = true;
    }
  }
}
