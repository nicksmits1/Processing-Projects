class Particle {
  PVector pos, dir;
  ArrayList<Ray> rays = new ArrayList();
  Particle() {
    pos = new PVector(width/2, height/2);
    dir = new PVector(0,0);
    for (float i=0; i<TWO_PI; i+=0.1) {
      rays.add(new Ray(pos, i));
    }
  }

  void show() {
    //pos.x = mouseX;
    //pos.y = mouseY;
    ellipse(pos.x, pos.y, 4, 4);
    for (int i=0; i<rays.size(); i++) {
      rays.get(i).show();
    }
  }

  void look(Boundary[] walls) {
    ArrayList scene = new ArrayList();
    for (int i = 0; i < this.rays.size(); i++) {
      Ray ray = this.rays.get(i);
      PVector closest = null;
      float record = 500000000;
      for (Boundary wall : walls) {
        PVector pt = ray.cast(wall);
        if (pt != null) {
          float d = PVector.dist(this.pos, pt);
          if (d < record) {
            record = d;
            closest = pt;
          }
        }
      }
      if (closest != null) {
        stroke(255, 100);
        line(this.pos.x, this.pos.y, closest.x, closest.y);
        scene.add(record);
      }else{
        //stroke(255);
        //line(this.pos.x, this.pos.y, 
      }
    }
  }
  
  void move(){
    pos.add(dir);
    PVector mouse = new PVector(mouseX, mouseY);
    dir = mouse.sub(pos);
    dir.limit(10);
  }
}
