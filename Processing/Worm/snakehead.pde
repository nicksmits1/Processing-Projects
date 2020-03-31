class SnakeHead{
  float xoff, yoff,x,y;
  float r = 20;
  SnakeHead(){
    x = width/2;
    y= height/2;
    xoff = 0;
    yoff = 1000;
  }
  
  void show(){
    x = map(noise(xoff), 0, 1, 0, width);
    y = map(noise(yoff), 0, 1, 0, height);      
    ellipse(x,y,r,r);
    
    xoff += 0.01;
    yoff += 0.01;
  }
  
  void showmouse(){
    x = mouseX;
    y = mouseY;
    noStroke();
    ellipse(x,y,r,r);
  }
}
