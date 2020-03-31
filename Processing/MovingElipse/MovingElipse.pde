int radius = 10, direction = 1; 
float x=10,speed=0.5; 
void setup() 
{ 
  size(500,500); 
  smooth(); 
  ellipseMode(RADIUS); 
} 
void draw() 
{ 
  background(0); 
  x=x+speed*direction; 
  if((x>width-radius) || (x<radius)) 
    direction=-direction; 
  if(direction==1) 
rect(20,20,20,20);
}
void keyPressed()
{
  if(key == CODED)
  {
    if (keyCode == LEFT)
    {
      if (direction>0)    direction=-direction;
    }
    if(keyCode == RIGHT)
    {
      if (direction<0)     direction=-direction;
    }
    
  }
}
