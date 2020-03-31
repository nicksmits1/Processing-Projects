class Cube{
  PVector pos;
  float len;
  float h;
  float s;  
  float b;
  Cube(float x, float y, float z, float len_) {
    pos = new PVector(x, y, z);
    len = len_;
    h = 0;
    s = 255;
    b = 255;
  }
  
  void show(){
    for(int i=0;i<255;i++){
      if(h<255){
        h++;
      }else
      h = 0;
    }
    colorMode(HSB);
    fill(h,s,b);
    translate(pos.x,pos.y,pos.z);
    box(50);
  }
}
