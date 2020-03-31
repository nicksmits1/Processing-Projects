class Map{
  float w, h;
  float x, y; 
  PImage rexidle;
  float speed;
  
  Map(float x, float y, float w, float h, float speed){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
  }
  
  void show(){
    rect(x,y,w,h);
    x-=speed;
  }
}
