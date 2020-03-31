float recX = 0;
float xspeed = 5;
float recY = 0;
float yspeed = 0;
float Rangle = random(0, 10);
float Rbounds = random(-25, 25);
void setup(){
  size(600, 600);
  background(0);
}

void draw(){
  float Red = random(0, 255);
  float Green = random(0, 255);
  float Blue = random(0, 255);
  recX = recX + xspeed;
  recY = recY + yspeed;
  rect(recX, recY, 40, 40);
 if(recX >= width || recX < 0){
  xspeed = xspeed *-1;
  yspeed = yspeed + Rangle;
  stroke(Red, Green ,Blue);
  fill(Red, Green ,Blue);
 }else if(recY>= height || recY < 0){
   yspeed = yspeed *-1;
   xspeed = xspeed + Rangle;
  stroke(Red, Green ,Blue);
  fill(Red, Green ,Blue);
 }
 
 if(xspeed > Rbounds || xspeed < -Rbounds){
   xspeed = 0;
 }else if(yspeed >Rbounds || yspeed < -Rbounds){
   yspeed = 0;
 }
 
}
