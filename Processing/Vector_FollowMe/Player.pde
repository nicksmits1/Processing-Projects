class Player{
  PVector pos;
  float r;
  Player(float r){
    pos = new PVector(width/2, height/2);
    this.r = r;
  }
  
  void show(){
    pos = new PVector(mouseX, mouseY);
    fill(255,0,0);
    circle(pos.x, pos.y, r);
  }
  void eaten(Follower f){
    if(pos.x == f.pos.x && pos.y == f.pos.y){
      eaten = true;
    }
  }
}
