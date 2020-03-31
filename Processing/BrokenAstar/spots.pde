class Spots{
  float x, y, gcost;
  boolean start;
  boolean end;
  boolean wall; 
  boolean path;
  Spots(float _x, float _y, boolean start, boolean end, boolean wall, float gcost){
    x = _x;
    y = _y;
    this.start = start;
    this.end = end;
    this.wall = wall;
    this.gcost = gcost;
  }
  
  void show(){
    if(start){
      fill(0,0,255);
    }else if(end){
      fill(255,0,0);
    }else if(wall){
      fill(0);
    }else if(path){
      fill(0,0,255);
    }else{
      fill(255);
    }
    rect(x,y,20,20);
  }
  
}
