import peasy.*;
PeasyCam cam;
int xax = 3;
int yax = 3;
int zax = 3;
float x = 22;
float y = 22;
float z = 22;
Cubes[][][] cubes = new Cubes[xax][yax][zax];
void setup(){
    cam = new PeasyCam(this, 400);
  size(600,600,P3D);
  for(int i=0;i<yax;i++){
    for(int k=0;k<zax;k++){
      for(int j=0;j<xax;j++){
        cubes[i][k][j] = new Cubes(x,y,z);
        x += 22;
      }
      y += 22;
      x = 0;
    }
    z += 22;
    y = 0;
    x = 0;
  }
}

void draw(){
  background(0);
   for(int i=0;i<yax;i++){
    for(int k=0;k<zax;k++){
      for(int j=0;j<xax;j++){
        cubes[i][k][j].show();
        if(keyPressed){
          cubes[i][k][j].t = 0;
        }
      }
    }
  }
}
