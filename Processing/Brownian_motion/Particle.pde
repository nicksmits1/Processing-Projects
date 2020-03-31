class Particle{
  PVector pos, dir;
  float r;
  Particle(float x, float y){
    pos = new PVector(x, y);
    dir = new PVector(random(-3,3), random(-3,3));
    r = 30;
  }
  
  void display(){
    pos.add(dir);
    ellipseMode(CENTER);
    ellipse(pos.x, pos.y, r, r);
  }
  
  void walls(){
    if(pos.x+r > width || pos.x-r < 0){
      dir.x *= -1;
    }else if(pos.y+r > height || pos.y-r < 0){
      dir.y *= -1;
    }
  }
  
  void checkbump(ArrayList<Particle> par, int index){
    //par.remove(index);
    for(int i=0;i<par.size();i++){
      if(pos.x == par.get(i).pos.x && pos.y == par.get(i).pos.y){
        dir.x *=-1;
        dir.y *=-1;
      }
    }
  }
}
