ArrayList<Particle> p = new ArrayList();
void setup() {
  size(600, 600);
  for (int i=0; i<10; i++) {
    p.add(new Particle(random(0, width),random(0, height)));
  }
}

void draw() {
  background(255);
  for(int i=0;i<10;i++){
    p.get(i).display();
    p.get(i).walls();
    p.get(i).checkbump(p, i);
  }
}
