ArrayList<Wall> walls;
ArrayList<Wall> topWalls;
Player player;
float wall_width = 40;
float t = 0;
float x = 0;
void setup(){
  size(600,600);
  walls = new ArrayList();
  topWalls = new ArrayList();
  float num = width/wall_width;
  for (int i=0;i<num;i++){
    x += (wall_width+20);
    float h = 200*cos(t);
    float topH = height - (200*cos(t)+60);
    float y = ((height-1) - h);
    float topY = 1;
    walls.add(new Wall(x, y, wall_width, h));
    topWalls.add(new Wall(x, topY, wall_width, topH));
    
    t+=0.5;
  }
  player = new Player(100, height/2, 40);
}

void draw(){
  background(255);
  for (int i=0;i<walls.size();i++){
    walls.get(i).display();
    walls.get(i).move();
    topWalls.get(i).display();
    topWalls.get(i).move();
    if (walls.get(i).pos.x < 0-wall_width){
      walls.remove(i);
      topWalls.remove(i);
      x += (wall_width+20);
      float h = 200*cos(t);
      float topH = height - (200*cos(t)+160);
      float y = ((height-1) - h);
      float topY = 1;
      walls.add(new Wall(x, y, wall_width, h));
      print(x);
      topWalls.add(new Wall(x, topY, wall_width, topH));
      t+=0.5;
    }
  }
  player.display();
  player.move();
  if (keyPressed){
    if(keyCode == SHIFT){
      player.vel.y *= -1;
    }
  }
  //player.keyPressed();
}
