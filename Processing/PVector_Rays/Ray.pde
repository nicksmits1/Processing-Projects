class Ray{
  PVector pos, dir;
  Ray(float pos_){
    pos = new PVector(pos_,pos_);
    dir = new PVector(3,3);
  }
  void show(float i){
    if(pos.x > 300){   
    pos.add(dir);
    }else if(pos.x > 100){
      pos.set(100,pos.y);
    }
    pushMatrix();
    rotate(i);
    line(width,height,pos.x,pos.y);
    popMatrix();
  }
}
