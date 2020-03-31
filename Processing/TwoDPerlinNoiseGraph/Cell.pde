class Cell{
  float x, y, g, r, s;
  float xoff, yoff;
  
  Cell(float x, float y){
    this.x = x;
    this.y = y;
    s = 2;
  }
  
  void show(float g){
    this.g = g;
    noStroke();
    fill(g);
    rect(x,y,s,s);
  }
  
}
