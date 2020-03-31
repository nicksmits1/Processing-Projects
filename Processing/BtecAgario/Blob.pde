class Blob{
  float xpos;
  float ypos;
  float w;
  
  Blob(float dia){
    xpos = mouseX;
    ypos = mouseY;
    w = dia;
  }
  void show(){
    xpos = mouseX;
    ypos = mouseY;
    ellipseMode(CENTER);
    fill(255,0,0);
    ellipse(xpos,ypos,w,w);
  }
  void intersect(Food food){
    if(xpos + w/2>food.fx && xpos<food.fx+20 && ypos + w/2>food.fy && ypos<food.fy+20 && w > food.r){
      food.fx = 1500;
      food.fy = 1500;
      w = w + 20;
    }else if(xpos + w/2>food.fx && xpos<food.fx+20 && ypos + w/2>food.fy && ypos<food.fy+20 && w < food.r){
      end = true;
    }
  }
}
