class Food{
  float fx;
  float fy;
  float fxdir;
  float fydir;
  float r;
  float R = random(0,255);
  float G = random(0,255);
  float B = random(0,255);
  Food(float fxpos, float fypos){
    fx = fxpos;
    fy = fypos;
    r = random(10,250);
    fxdir = random(-10,10);
    fydir = random(-10,10);
  }
  
  void show(){
    fx = fx + fxdir;
    fy = fy + fydir;
    ellipseMode(CENTER);
    fill(R,G,B);
    noStroke();
    ellipse(fx,fy,r,r);
    circle(fx,fy,20);
    
  }
  void walls(){
    if(fx>width||fx<0){
      fxdir = fxdir * -1;
    }else if(fy>height||fy<0){
      fydir = fydir * -1;
    }  
  }
}
