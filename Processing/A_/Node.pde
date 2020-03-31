class Node{
  float f, g, h;
  float x, y, r;
  Node(float x, float y, float r){
    this.x = x * 80; this.r = r; this.y = y*80;
  }
  
  void show(){
    circle(x, y, r);
  }
  
  void addNeighbours(grid){
    
  }
}
