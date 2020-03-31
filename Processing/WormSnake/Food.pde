class Food{
  float x,y,r;
  
  Food(){
    r = 15;
    x = random(0,width -r);
    y = random(0,height -r);    
  }
  
  void show(){
    fill(255,0,0);
    ellipse(x,y,r,r);
  }
  
  void intersect(SnakeHead sh){
    float d = dist(x,y,sh.x,sh.y);
    if(d < r){
      println("nom");
      x = random(0,width -r);
      y = random(0,height -r);
      snake.add(new Snake(sh.x, sh.y));
      sLength ++;
      eat = true;
    }
  }
}
