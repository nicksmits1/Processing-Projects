float ax, ay;
float bx, by;
float cx, cy;
float dx, dy;
float x, y;

void setup(){
  size(600,600);
  background(0);
  ay = height/2;
  ax = width/2;  
  bx = 0;
  by = height;  
  cx = width;
  cy = height;
  //dx = width;
  //dy = 0;
  x = random(0,width);
  y = random(0,height);
  point(ax, ay);
  point(bx, by);
  point(cx, cy); 
}

void draw(){
  
  for(int i = 0;i<100;i++){
  stroke(255,0,255);
  strokeWeight(3);
  
  
  float r = floor(random(4));
  
  if(r == 0){
    x = lerp(x,ax,0.5);
    y = lerp(y,ay,0.5);
  }else if(r == 1){
    x = lerp(x,bx,0.5);
    y = lerp(y,by,0.5);
  }else if(r == 2){
    x = lerp(x,cx,0.5);
    y = lerp(y,cy,0.5);
  //}else if(r == 3){
  //  x = lerp(x,dx,0.5);
  //  y = lerp(y,dy,0.5);
  }
    point(x,y);
  }
}
