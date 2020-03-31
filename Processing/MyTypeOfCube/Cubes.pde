class Cubes{
  float x;
  float y;
  float z;
  float t;
  Cubes(float x_,float y_,float z_){
    x = x_;
    y = y_;
    z = z_; 
  }
  
  void show(){ 
    t+= 0.1;
    pushMatrix();
    translate(x,y,z);
    //rotateX(t);
    //rotateY(t);
    box(20);
    popMatrix();
  }
}
