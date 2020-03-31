Spaceship s;
ArrayList<Bullet> b;
Defense[] d;
Alien[][] a;
void setup() {
  size(600, 600);
  a = new Alien[4][10];
  float z = 15;
  s = new Spaceship(width/2, height-60, 100, 20);
  b = new ArrayList();
  d = new Defense[4];
  for (int i=0; i<=3; i++) {
    d[i] = new Defense(z, 350);
    float diff = (width-(4*d[i].w))/5;
    z += diff + 100;
  }

  float xDiff = (width - (10*30))/11;
  float yDiff = 30;
  float x = 20;
  float y = 10;
  for (int i=0; i<=3; i++) {
    for (int j=0; j<=9; j++) {
      a[i][j] = new Alien(x, y); 
      x += xDiff + a[i][j].w;
    }
    x = 20;
    y += yDiff + 10;
  }
}

void draw() {
  background(0);
  s.display();
  s.move();
  for (int i=0; i<b.size(); i++) {
    b.get(i).display();
    if (b.get(i).pos.y < 0 || b.get(i).pos.y > height) {
      b.remove(i);
    }
    if(b.size() != 0){
      b.get(i).checkHitDefense();
    }
  }
  for (int i=0; i<=3; i++) {
    d[i].display();
  }
  for (int i=0; i<=3; i++) {
    for (int j=0; j<=9; j++) {
      a[i][j].display();
      if((i == 3) && (a[i][j].pos.x < width +20)){
        a[i][j].Ashoot();
      }
      a[i][j].hit(b);
    }
  }
  //print(b.size());
}

public void shoot() {
  b.add(new Bullet(s.getXPos()+50, height-80, -4));
}
public void rBullet(int i){
  b.remove(i);
}

void keyPressed(){
  if (keyCode == SHIFT){
    shoot();
  }
}
