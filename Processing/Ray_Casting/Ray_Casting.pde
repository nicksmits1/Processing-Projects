Boundary b[] = new Boundary[7];
Particle p;
float widthS = 400;
float heightS = 600;
void setup() {
  size(600, 600);
  for (int i=0; i<3; i++) {
    b[i] = new Boundary(random(widthS), random(heightS), random(widthS), random(heightS));
    println(b[i].a.x, b[i].a.y, b[i].b.x, b[i].b.y);
  }
  b[3] = new Boundary(0, 0, 400, 0);
  println(b[3].a.x, b[3].a.y, b[3].b.x, b[3].b.y);
  b[4] = new Boundary(400, 0, 600, 400);
  println(b[4].a.x, b[4].a.y, b[4].b.x, b[4].b.y);
  b[5] = new Boundary(400, 600, 0, 400);
  println(b[5].a.x, b[5].a.y, b[5].b.x, b[5].b.y);
  b[6] = new Boundary(0, 600, 0, 0); 
  println(b[6].a.x, b[6].a.y, b[6].b.x, b[6].b.y);
  p = new Particle();
}

void draw() {
  background(0);
  for (int i=0; i<3; i++) {
    b[i].show();
    p.look(b);
  }
  p.show();
  p.move();
}
