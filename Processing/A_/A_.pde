int cols = 4;
int rows = 5;
float w = width/cols;
float h = height/rows;
Node grid[][] = new Node[cols][rows];
ArrayList<Node> closed_set = new ArrayList();
ArrayList<Node> open_set = new ArrayList();
Node end, start;

void setup() {
  int h = 0;
  size(600, 600);
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      grid[i][j] = new Node(i, j, 40);
      open_set.add(grid[i][j]);
      println(grid[i][j].x, grid[i][j].y);
      h++;
    }
  }
  start = grid[0][0];
  end = grid[cols-1][rows-1];
}

int winner = 0;
Node current;
int x = 0;
void draw() {
  background(255);
  if (open_set.size() > 0) {
    for (int i=0; i<open_set.size(); i++) {
      if (open_set.get(i).f > open_set.get(winner).f) {
        winner = i;
        current = open_set.get(winner);
      }
    }
      if(current == end){
        println("Done");
      }else{
        closed_set.add(current);
        open_set.remove(current);
      }
      
      List<Node> neighbours = current.neighbours;
    }
  } 

  translate(width/4, height/4);
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      noFill();
      grid[i][j].show();
    }
  }
  for (int i=0; i<open_set.size(); i++) {
    fill(0, 0, 255);
    open_set.get(i).show();
  }
  //for (int i=0; i<closed_set.size(); i++) {
  //  fill(0, 0, 255);
  //  closed_set.get(i).show();
  //}
}
