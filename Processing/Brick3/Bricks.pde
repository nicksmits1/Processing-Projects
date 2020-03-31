class Bricks{
  float count;
  float x;
  float y;
  float heit;
  float arrx[] = new float[25];
  float arry[] = new float[10];

Bricks(){
  x = 0;
  y = 0;
  heit = 25;
}

void display(){
    x += 25;
    count++;
    if (count == 25){
      //arry[i] += heit;//issue on this line 
      x = 0;
      count = 0;
      y+=22;
    }
    rect(x,y,20,20);
  }
  
}
