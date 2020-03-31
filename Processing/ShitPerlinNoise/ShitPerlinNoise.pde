Grid grid[][];
int rows = 50;
int cols = 50;
  float x = 0;
  float y = 0;
  float tx = 0;
  float ty = 0;
  float boxsize = 10;
void setup(){
  size(600,600);
  frameRate(15);
  background(255);
  grid = new Grid[rows][cols];
 for (int i = 0; i < rows-1; i++) {
     float yoff = map(sin(i),-1,1,0,height);
    for (int j = 0; j < cols-1; j++) {
      float xoff = map(cos(i), -1,1,0,width);
      float no = noise(xoff,yoff);
      no = map(no,0,1,0,200);
      grid[i][j] = new Grid(x,y,no);
      x += boxsize + (boxsize * 0.1);
    }
    x = 0;
    y += boxsize + (boxsize * 0.1);
 }
}

void draw(){
  for(int i=0;i<rows-1;i++){
    for(int k=0;k<cols-1;k++){
      grid[i][k].show();
      //println(no);
    }
  }
}
