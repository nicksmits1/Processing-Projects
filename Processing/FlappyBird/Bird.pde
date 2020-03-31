class Bird{
  float x;
  float y;
  float diameter = 20;
  float yAcc;
  int i;
  Bird(float w){
    x = 100;
    y = height/2;
    diameter = w;
  }
  void show(){
    fill(255,0,0);
    circle(x,y,diameter);
  }
  
  void update(){
    y += yAcc;
    yAcc *= 1.05;
    
    if(keyPressed){
      if(key ==CODED){
      if(keyCode == UP){
        y -= 10;
        yAcc = 1.05;
      }
    }
    }
  }
 void walls(){
   if(y>height||y<0){
     text("GAME OVER",100,100);
   }
 }
 void collision(Pipes other){ 
     if ((x > other.xpos && y > other.h + 60 && x < other.xpos + 40) || (x > other.xpos && y < other.h && x < other.xpos + 40)){ 
       text("GAME OVER",100,100);
       //for(int i=0;i<num;i++){
       //  pipes[i].acc = 0;
       //}
       
     }
   }
 }
