class Snake{
  float x;
  float y;
  float r = 20;
  
  Snake(float x,float y){
    this.x = x;
    this.y = y;
  }
  
  void show(){
    fill(255);
    noStroke();
    ellipse(x,y,r,r);
  }
}
