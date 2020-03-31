class Grid{
  float x;
  float y;
  float c;
  
  Grid(float x, float y, float per){
    this.x = x;
    this.y = y;
    c = per;
  }
  
  void show(){
    fill(c);
    rect(x,y,boxsize,boxsize);
  }
}
