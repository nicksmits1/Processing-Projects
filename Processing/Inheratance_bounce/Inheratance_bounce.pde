Rect square;
Circle c[] = new Circle[5];
void setup() {
  size(600, 600);
  square = new Rect();
  for (int i=0; i<5; i++) {
    c[i] = new Circle();
  }
}

void draw() {
  background(255);
  square.display();
  square.walls();
  for(int i=0;i<5;i++){
    c[i].display();
    c[i].walls();
    c[i].collide(square);
  }
}
