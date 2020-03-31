class Bird {
  int dia = 20;
  float x = 200;
  float y = height/2;
  float px, py, tick;
  FCircle circle;

  Bird() {
    circle = new FCircle(dia);
    circle.setPosition(x, y);
  }
  void show() {
    if (!dead) {
      circle.setFill(0, 0, 255);
    } else if (dead) {
      circle.setFill(255, 0, 0);
    }
    world.add(circle);
  }

  void jump() {
    if (count % 15 == 0) {
      tick = 0;
    }
    if (keyPressed) {
      if (keyCode == UP && tick < 5) {
        circle.addImpulse(0, -40);
        tick++;
      }
    }
  }
}
