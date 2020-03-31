class Wall{
  float w, h;
  PVector pos;
  Wall(float x, float y, float w, float h){
    this.pos = new PVector(x, y);
    this.w = w;
    this.h = h;
  }
  
  void display(){
    rect(pos.x, pos.y, w, h);
  }
  
  void move(){
    pos.x-=10;
  }
}
