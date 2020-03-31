Cell[][] grid;
Spot spot;
int cols = 20;
int rows = 20;
int cellsize = 20;
float nodearr[][]; //= new float[cols][rows];
float openSet[];
float closedSet[];
float start;
float end;
void setup() {
  size(400, 400);
  grid = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*cellsize, j*cellsize, cellsize, cellsize);
    }
  }
}
void draw() {
  background(0);
  // check all cells
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j].overcell();
      grid[i][j].pressed();
      grid[i][j].display();
      //spot.show();
    }
  }
  

}
