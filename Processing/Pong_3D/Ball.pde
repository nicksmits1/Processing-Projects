class Ball{
  float x, y, z, r;
  float xdir, ydir, zdir;
  Ball(float x, float y, float z, float r){
    this.x = x;
    this.y = y;
    this.z = z;
    this.r = r;
    xdir = 1;
    ydir = 2;
    zdir = 3;
  }
  
  void display(){
    x += xdir;
    y += ydir;
    z += zdir;
    pushMatrix();
    translate(x, y, z);
    sphere(r);
    popMatrix();
  }

  void checkCollide(Paddle pad){
    if((z + r >= 0 && z-r <= 10) && (x - r >= pad.x && x+r<= pad.x + 100)){ //&& (y-r >= pad.y && y+r<= pad.y)){
      zdir *=-1;
    }
  }
  
  float bounceDir(float dir){
    if(dir < 0){
      dir = random(0, 3);
    }else if(dir > 0){
      dir = random(-3, 0);
    }
    return dir;
  }
  
  void edges(){
    if(z - r <= -350 || z + r >= 350){
      zdir *= -1;
      //xdir = bounceDir(xdir);
      //ydir = bounceDir(ydir);
    }else if(x+r>=350 || x-r<=-350){
      //zdir = bounceDir(xdir);
      //ydir = bounceDir(zdir);      
      xdir *= -1;
    }else if(y+r>=350 || y-r<=350){
      //xdir = bounceDir(xdir);
      //zdir = bounceDir(zdir);
      ydir *=-1;
    }
  }
}
