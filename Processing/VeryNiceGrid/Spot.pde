class Spot{
  float xpos;
  float ypos;
  float f;
  float h;
  float g;
  Spot(float i, float j){
    xpos = i;
    ypos = j;
    f=0;
    h=0;
    g=0;
  }
  void show(){
    fill(255,0,255);
    rect(xpos,ypos,20,20);
  }
}
