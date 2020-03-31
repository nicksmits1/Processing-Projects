class Pipes{
  float xpos;
  float ypos;
  float h;
  float dis, acc;
  Pipes(float x){
    xpos = 300;
    ypos = 0;
    h = random(0,250);
    dis = x; 
    acc = -2;
  }  
  void show(){ 
    fill(0,255,0);
    rect(xpos + dis,ypos,40,h);
    rect(xpos + dis,h+60,40,height - (h+40)); 
    xpos += acc;
  }
    }
