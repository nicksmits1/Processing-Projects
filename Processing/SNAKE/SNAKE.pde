int x =0;
int y =0;
int res = 25;
char keys = 'W';
float xRand = 300;
float yRand = 300;
int score = 0;
color Red = color(255,0,0);
color Green = color(0,255,0);
int taillength = 1;
boolean play = false;
int xtail[];
int ytail[];
void setup(){
  size(600,600);
  background(255);
  frameRate(10);
}

void draw(){
  background(255);
  fill(Green);
  rect(x,y,20,20);
  //Slength();
  updatelength();
  
  
  textSize(14);
  fill(0);
  text(score, 500, 20);
  
  if(key == CODED){
    if(keyCode == UP){
      keys = 'W';
    }else if(keyCode == DOWN){
      keys = 'S';
    }else if(keyCode == RIGHT){
      keys = 'D';
    }else if(keyCode == LEFT){
      keys = 'A';
    }
    
    if(keys == 'W'){
      y -= height/res;
    } else if(keys == 'S'){
      y += height/res;
    }else if(keys == 'D'){
      x += width/res;
    }else if(keys == 'A'){
      x -= width/res;
    }
  }

  
rect(xRand, yRand, 40, 40);
fill(180,255,34);

if(x > xRand && x < xRand + 40 && y > yRand && y < yRand +40){
  xRand = random(0, 300);
  yRand = random(0, 300);
  fill(255,0,0);
  rect(xRand,yRand,40,40);
  score = score + 1;
  taillength++;
  play = true;

  }

if(x > width || x < 0 || y > height || y < 0){
  endgame();
}
}


void endgame(){
  x = 0;
  y = 0;
  keys =' ';
  textSize(32);
  fill(0);  
  text("GAME OVER", 200, 267);
  play =false;
  taillength =0;


//void Slength(){
  //taillength++;
 // while(play == true){
  //  int i = 0;
  //for(i=1; i < taillength; i++){
   // if ( keys == 'D'){
   //   rect(x + 20,y,20,20);

   // }else if ( keys == 'A'){
      //rect(x -20,y,20,20);

    //}else if ( keys == 'W'){
     //rect(x, y-20,20,20);
      
   // }else if ( keys == 'S'){
     // rect(x, y+20,20,20);
    //}
   // play = false;
   // fill(Green);
  //}
  
  //}
}
  void updatelength(){
    for (int i= 0; i<taillength; i++){
      xtail[i] = x;
      ytail[i] = y;
      rect(xtail[i],ytail[y],20,20);
    }
  }
