class Ball{
  PVector pos, dir;
  float r;
  Ball(){
    this.pos = new PVector(width/2, height/2); 
    this.dir = new PVector(3, 4);
    r = 40;
  }
  
  void move(){
    pos.add(dir);
    ellipseMode(CENTER);
    ellipse(pos.x, pos.y, r, r);
  }
  
  void edges(){
    if(pos.x + r > width || pos.x-r < 0){ 
      dir.x *= -1;
    }else if(pos.y + r > height || pos.y - r < 0){
      dir.y *= -1;
    }
  }
}
