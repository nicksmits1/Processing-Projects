class Sling {
  float dia = 20;
  float h=10;
  float w=20;
  float bigh = 150;
  float bigw = w;
  float x = 200 - 2 * dia;
  float y = height - 40;  
  float by = height-200;
  float bx = 350;
  float bigx = bx ;
  float bigy = by + bigh/2;
  float vx;
  float vy;  
  float cy;
  FBox box, bigbox;
  FCircle circle;
  FDistanceJoint spring;
  Sling() {
    box = new FBox(w, h);
    box.setPosition(bx, by);
    box.setStatic(true);

    bigbox = new FBox(bigw, bigh);
    bigbox.setPosition(bigx, bigy);
    bigbox.setStatic(true);

    circle = new FCircle(dia);
    circle.setPosition(bx - 20, by);

    spring = new FDistanceJoint(box, circle);
    spring.setFrequency(5);
    spring.setDamping(5);
    //spring.setAnchor(bx-w, by -h);
  }
  void show() {
    world.add(box);
    world.add(circle);
    world.add(spring);
    world.add(bigbox);
  }

  void letGo() {
    cy = circle.getY();
    vx = circle.getVelocityX();
    vy = circle.getVelocityY();
    if(!mousePressed){
    if (vx > 200) {
      world.remove(spring);
      world.remove(box);
      world.remove(bigbox);   
    }
    if(vx < 0.0001 && cy > 530 && vy < 0.0001){
    box.setPosition(bx, by);
    bigbox.setPosition(bigx, bigy);
    circle.setPosition(bx - 20, by);
    world.add(box);
    world.add(circle);
    world.add(spring);
    world.add(bigbox);
    }
    }
  }
  }
