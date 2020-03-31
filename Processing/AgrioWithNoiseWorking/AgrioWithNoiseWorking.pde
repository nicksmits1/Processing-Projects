Blob blob = new Blob(30);
int num=25;
boolean end=false;
Food[] food = new Food[num];
void setup(){
  size(1000,1000);
  frameRate(20);
  for(int i=0;i<num-1;i++){
  float fxr = random(0,1000);
  float fyr = random(0,1000);
  food[i] = new Food(fxr,fyr);
  }

}
void draw(){
  background(255);
  blob.show();
  for(int i=0;i<num-1;i++){
  food[i].show();
  blob.intersect(food[i]);
  if(end){
    fill(0);
    textSize(100);
    text("Game Over",250,250);
  }else if(blob.w > 20 * num - 1){
    fill(0);
    textSize(100);
    text("You Win",250,250);
  }
}

}
