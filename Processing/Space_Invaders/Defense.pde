class Defense{
  PVector pos;
  float w, h;
  PImage a, b, c, d;
  int hp;
  Defense(float x, float y){
    pos = new PVector(x, y);
    w = 75;
    h = 75;
    a = loadImage("Defense.png");
    b = loadImage("Defense_3.png");
    c = loadImage("Defense_2.png");
    d = loadImage("Defense_1.png");
    hp = 4;
  }
  
  void display(){
    //rect(pos.x, pos.y, w, h);
    switch(hp){
    case 4:
    image(a, pos.x, pos.y);
    break;
    case 3:
    image(b, pos.x, pos.y);
    break;
    case 2:
    image(c, pos.x, pos.y);
    break;
    case 1:
    image(d, pos.x, pos.y);
    break;
    case 0:
    image(a, 10000, 100000);
    break;
    //default:
    //image(a, pos.x, pos.y);
    }
  }
}
