Cell[][] cell;
int cols = 515;
int rows = 515;
float x, y, xoff, yoff, move;
float s = 2;
void setup() {
  size(580, 580,P3D);
  rotateX(10);
  cell = new Cell[rows][cols];
  //frameRate(15);
  for (int i=0; i<rows; i++) {
    for (int k=0; k<cols; k++) {
      cell[i][k] = new Cell(x, y);
      x+=s;
    }
    x=0;
    y+=s;
  }
}

void draw() {
  yoff = move;
  for (int i=0; i<cols; i++) {
    xoff = 0;
    for (int k=0; k<rows; k++) {
      cell[i][k].show(map(noise(xoff, yoff), 0, 1, 0, 255));
      xoff += 0.02;
    }
      yoff += 0.02;
  }
  move -=0.02;

}
