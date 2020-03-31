int rows = 25;
int cols = 25;
float x, y, w, fcost, hcost;
float gcost = 710;
boolean start = false;
boolean end = false;
boolean wall = false;
boolean finished = false;
Spots[][] spot;
ArrayList<Spots> openSet = new ArrayList<Spots>();
ArrayList<Spots> closedSet = new ArrayList<Spots>();
void setup() {
  size(500, 500);  
  spot = new Spots[rows][cols];
  for (int i=0; i<rows; i++) {
    for (int k=0; k<cols; k++) {
      SorE(i, k);
      wall(i, k);
      spot[i][k] = new Spots(x, y, start, end, wall, gcost);
      gcost = dist(spot[i][k].x, spot[i][k].y, 480, 480);
      print(gcost);
      x += 20;
    }
    x=0;
    y+=20;
  }
  openSet.add(spot[0][0]);
}

void draw() {
  for (int i=0; i<rows; i++) {
    for ( int k=0; k<cols; k++) {
      spot[i][k].show();
    }
  }
  if (keyPressed && keyCode == SHIFT) {
    openSet.add(spot[0][0]);
    while (openSet.size() != 0) {
      if (finished) {
        openSet.clear();
      } else {
        //closedSet.add(spot[i][k]);
        for (int i=0; i<rows-1; i++) {
          for ( int k=0; k<cols-1; k++) {
            if (spot[i+1][k].gcost < spot[i][k+1].gcost && spot[i+1][k].gcost < spot[i+1][k+1].gcost) {
              openSet.add(spot[i+1][k]);
              spot[i+1][k].path = true;
            } else if (spot[i][k+1].gcost < spot[i+1][k].gcost && spot[i][k+1].gcost < spot[i+1][k+1].gcost) {
              openSet.add(spot[i][k+1]);
              spot[i][k+1].path = true;              
            } else if (spot[i+1][k+1].gcost < spot[i+1][k].gcost && spot[i+1][k+1].gcost < spot[i][k+1].gcost) {
              openSet.add(spot[i+1][k+1]);
              spot[i+1][k+1].path = true;              
            }
            if(spot[i][k].gcost < 20){
              finished = true;
            }
          }
        }
      }
    }
  }
    }

    void SorE(int i, int k) {
      if (i == 0 && k == 0) {
        start = true;
      } else if (i==24 && k==24) {
        end = true;
      } else {
        end = false;
        start = false;
      }
    }

    void wall(int i, int k) {
      w = random(0, 1);
      if (int(w)==1) {
        wall = true;
      } else if (int(k)==0) {
        wall = false;
      }
    }
    
    void colourPath(){
    }
