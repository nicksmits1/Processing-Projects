int num = 20;
Block[] blocks = new Block[num];
int x =100;
int y =500;
int ex;
int ey;
int xdir =0;
int exdir =1;
int eydir =5;
int recnum = 1;
void setup(){
  size(600,600);
  frameRate(60);
  for(int i = 0; i < 100; i++){
   blocks[i] = new Block(ex,ey);
   ex+=22;
   if(ex > 12);
   ey+=22;
  }
}

void draw(){
  x=x+xdir;
  ex=ex+exdir;
  ey=ey+eydir;
  background(255);
  rect(x,y,100,20);
  ellipse(ex,ey,20,20);

  
  if(ex > x && ex < x+100 && ey > y && ey < y+40){
    eydir = eydir * -1;
  }else if(ey < 0){
    eydir = eydir * -1;
  }else if(ex < 0 || ex > width){
    exdir = exdir * -1;
  }else if(ey > height){
    endgame();
  }

}
  
void keyPressed(){
    if(key == CODED){
    }if(keyCode == RIGHT){
      xdir = xdir + 10;
    }else if(keyCode == LEFT){
      xdir = xdir - 10;
    }
    }
void keyReleased(){
      if(key == CODED){
    }if(keyCode == RIGHT){
      xdir = 0;
    }else if(keyCode == LEFT){
      xdir = 0;
    }
}
void endgame(){
  ex =100;
  ey =10;
  ex =100;
  ey =10;
}


    
