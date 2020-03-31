Blob blob = new Blob(30);
int num=25;
boolean end=false;
Food[] food = new Food[num];
NoiseLoop xNoise;
void setup(){
  size(1000,1000);
  frameRate(20);
  xNoise = new NoiseLoop(5);
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
  food[i].walls();
  blob.intersect(food[i]);
  if(end){
    food[i].fxdir = 0;
    food[i].fydir = 0;
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
