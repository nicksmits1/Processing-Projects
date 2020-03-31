class Puck{
  float x = width/2;
  float y = height/2;
  float xspeed = 3;
  float yspeed = 0;
  
  void update(){
    x = x + xspeed;
    y = y + yspeed;
  }
  
  
  void show() {
    fill(255);
    ellipse(x, y, 24, 24);
  }
  
  void edges(){
    if( y > height || y < 0){
      yspeed = yspeed * -1;
  }else if( x > width || x < 0){
      xspeed = xspeed * -1;
}
  }
//void checkpaddle(){
  //if(x > rect.x && y < rect.y){
   // xspeed = xspeed * -1;
    //yspeed = yspeed * -1;
  }
