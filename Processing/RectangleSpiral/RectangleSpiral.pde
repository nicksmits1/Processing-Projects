int x = 0;
int y = 3;
int z;
int rota;
void setup(){
    size(1000, 1000);
  background(255);
  smooth();

}
void draw(){
  while(x < 100){
    rect(x++, x++, 50, 50);
    translate(5, 5);
    rotate(radians(y++));
    
  }

     
}
