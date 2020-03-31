Blob blob;
Blob[] food;
int num = 20;
float zoom = 1;
boolean end = false;
void setup(){
  size(600,600);
  blob = new Blob(0,0,60);
  food = new Blob[num];
  for(int i=0;i<num-1;i++){
    float fx = random(-2000,2000);
    float fy = random(-2000,2000);
    float r = random(10,250);
    food[i] = new Blob(fx,fy,r);
  }
}
void draw(){
  background(255);
  translate(width/2,height/2);
  float newzoom = 60 / blob.r;
  zoom = lerp(zoom, newzoom, 0.1);
  scale(zoom);
  blob.show();
  translate(-blob.pos.x,-blob.pos.y);
  for(int i=0;i<num-1;i++){
   food[i].foodShow();
   blob.intersect(food[i]);  
  }
  if(end){
    println("game over");
  }
  blob.update();
}
