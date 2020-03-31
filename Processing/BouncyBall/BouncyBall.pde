int rany = 100;
int ranx = -100;
void setup(){
 size(1000, 1000);
 background(255);
 
}
void draw(){  
  float RandomY = random(ranx, rany);
  float RandomX = random(ranx, rany);
  ranx = ranx - 1;
  rany = rany + 1;
  translate(RandomX, RandomY);
  ellipse();
}
