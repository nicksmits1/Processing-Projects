class Bullet{
  PVector pos, vel;
  float w, h;
  Bullet(float x, float y, float dir){
    pos = new PVector(x, y);
    vel = new PVector(0, dir);
    w = 2;
    h= 20;
  }
  
  void display(){
    pos.add(vel);
    fill(255);
    rect(pos.x, pos.y, w, h);
  }
  
  void checkHitDefense(){
    for(int i=0;i<d.length;i++){
      if((pos.x > d[i].pos.x && pos.x +w < d[i].pos.x+d[i].w) && (pos.y > d[i].pos.y && pos.y + h < d[i].pos.y + d[i].h)){
        d[i].hp --;
      }
    }
  }
}
