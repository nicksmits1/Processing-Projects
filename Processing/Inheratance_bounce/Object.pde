class Object{
  PVector pos, dir;
  float s;
  
  Object(float s){
    pos = new PVector(random(0,width), random(0, height));
    this.s = s;
    //dir = new PVector(random(-3,3), random(-3,-3));
    dir = new PVector(3, 2);
  }
  Object(){
    s = 40;
    pos = new PVector(random(0,width), random(0, height));
    dir = new PVector(random(-3,3), random(-3,-3));
  }
  
  void walls(){
    if(pos.x<0||pos.x>width){
      dir.x *= -1;
    }else if(pos.y<0||pos.y>height){
      dir.y *= -1;
    }
  }
  
  void collide(Object o){
    if(dist(pos.x, pos.y, o.pos.x, o.pos.y) < s/2){
      dir.x *= -1;
      dir.y *= -1;
      o.dir.x*=-1;
      o.dir.y*=-1;
    }
  }
}

class Rect extends Object{
  
  void display(){
    pos.add(dir);
    rect(pos.x, pos.y, s, s); 
  }
}

class Circle extends Object{
  
  void display(){
    pos.add(dir);
    circle(pos.x, pos.y, s);
  }
}
