float[][] terrain;
int rows = 45;
int cols = 45;
float xoff, yoff, move;
float wavesz = 70;
float scale = 20;
void setup(){
  size(1000,600,P3D);
  terrain = new float[cols][rows];
}

void draw(){
  move -= 0.01;
  yoff = move;
  for(int y=0;y<cols;y++){
    xoff = 0;
    for(int x=0;x<rows;x++){
      terrain[x][y] = map(noise(xoff,yoff),0,1,-wavesz,wavesz);
      xoff += 0.1;
    }   
    yoff += 0.1;
  }

  background(255);
  rotateX(0.9);
  //translate(0,400);

for(int y=0;y<cols-1;y++){
  beginShape(TRIANGLE_STRIP);
  for(int x=0;x<rows;x++){
    fill(map(terrain[x][y],-wavesz,wavesz,0,255));
    vertex(x*scale,y*scale,terrain[x][y]);
    vertex(x*scale,(y+1)*scale,terrain[x][y+1]);
  }
  endShape();
}
}
