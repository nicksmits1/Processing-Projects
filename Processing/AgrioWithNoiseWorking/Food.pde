class Food{
  float fx, fxdir;
  float fy, fydir;
  float xoff;
  float yoff;
  float r;
  float R = random(0,255);
  float G = random(0,255);
  float B = random(0,255);
  Food(float fxpos, float fypos){
    fx = fxpos;
    fy = fypos;
    xoff = random(-100, width+100);
    yoff = random(-100, height+100);
    r = random(10,250);
  }
  
  void show(){
    fx = map(noise(xoff), 0, 1, -300, 1300);
    fy = map(noise(yoff), 0, 1, -300, 1300); 
    
    
    ellipseMode(CENTER);
    fill(R,G,B);
    noStroke();
    ellipse(fx,fy,r,r);
    xoff += 0.01;
    yoff += 0.01;
  }
}
