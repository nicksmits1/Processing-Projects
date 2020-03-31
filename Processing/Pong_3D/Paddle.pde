class Paddle {
  float x, y, z, w;
  float vel;
  float r, g, b;
  Paddle(float x, float y, float z, float w) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = w;
    vel = 3;
    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
  }

  void display() {
    //fill(r, g, b);
    //Front side palne
    fill(0);
    beginShape();
    vertex(x, y, z);
    vertex(x+w, y, z);
    vertex(x+w, y+w, z);
    vertex(x, y+w, z);
    endShape();
    //backSide plane

    beginShape();
    vertex(x, y, z+10);
    vertex(x+w, y, z+10);
    vertex(x+w, y+w, z+10);
    vertex(x, y+w, z+10);
    endShape();
    //Edges
    beginShape();
    vertex(x, y, z);
    vertex(x, y, z+10);
    vertex(x+w, y, z+10);
    vertex(x+w, y, z);
    endShape();
    
    beginShape();
    vertex(x+w, y+w, z);
    vertex(x+w, y+w, z+10);
    vertex(x, y+w, z+10);
    vertex(x, y+w, z);
    endShape();
    
    beginShape();
    vertex(x+w, y, z);
    vertex(x+w, y, z+10);
    vertex(x+w, y+w, z+10);
    vertex(x+w, y+w, z);
    endShape();
    
    beginShape();
    vertex(x, y, z);
    vertex(x, y, z+10);
    vertex(x, y+w, z+10);
    vertex(x, y+w, z);
    endShape();
  }

  void move(String input) {
    if(input=="arrows"){
      if (keyPressed) {
        if (keyCode == UP) {
          y-= vel;
        } else if (keyCode == LEFT) {
          x-= vel;
        } else if (keyCode == RIGHT) {
          x+= vel;
        } else if (keyCode == DOWN) {
          y+= vel;
        }
      }
    }
    if(input=="wasd"){
      if (keyPressed) {
        if (key == 'W'|| key== 'w') {
          y-= vel;
        } else if (key == 'A'|| key== 'a') {
          x-= vel;
        } else if (key == 'D' || key== 'd' ) {
          x+= vel;
        } else if (key == 'S'|| key== 's') {
          y+= vel;
        }
      }
    }
  }
}
