class Cell {
  float x, y;   // x,y location
  float w, h;   // width and height
  boolean p;    // wall
  boolean over; // mouse over
  boolean s; // start
  float r, g, b;
    // a constructor which gives initial values once class is called!
  Cell(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    p = false;
    s = false;
    over = false;
    r = 0;
    g = 0; 
    b = 0;
  }
  void pressed() {
    if ((over && mousePressed)) {
      if (keyPressed) 
        p = false;
      else
        r = 255;
        p = true;
    }else if((over && keyPressed)){
      if(keyCode == SHIFT){
        p = false;        
    }else if((over && keyPressed)){
      if(keyCode == UP){      
      r = 0;
      b = 255;
      p = true;
    }else if((over && keyPressed)){
      if(keyCode == DOWN){
        r = 0;
        b = 0;
        g = 255;
        p = true;
      }
    }
   }
  }
 }
  void overcell() {
    if (rollover()) {
      over = true;
    }
    else {
      over = false;
    }
  }
  boolean rollover() {
    if (mouseX >= x && mouseX <= x + w &&
      mouseY >= y && mouseY <= y + h) {
      return true;
    }
    else {
      return false;
    }
  }
  void display() {
    stroke(255);
    // Color calculation
    if (p) {
      fill(r,g,b);
    }
    else {
      fill(0);
    };
    rect(x, y, w, h);
  }
 }// method
 // class
//
