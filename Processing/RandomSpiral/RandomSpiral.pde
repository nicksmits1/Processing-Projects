int x= 0;

void setup(){
  size(1000, 1000);
  background(0);
  
}

void draw(){
  Float Generator = random(0,360);
  translate(width/2,height/2);
  while (x < 1000){
  recta();
  rotate(radians(Generator));
  x++;
}
}
