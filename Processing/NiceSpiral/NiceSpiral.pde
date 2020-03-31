FloatList spiralx, spiraly;
float r = 10;
float t;
float h = 240;
void setup() {
  size(600, 600);
  spiraly = new FloatList();
  spiralx = new FloatList();
}

void draw() {
  colorMode(HSB);
  background(0);
  translate(300, 300);
  strokeWeight(3);
  float x = r * sin(t);
  float y = r * cos(t);
  spiraly.insert(0, y);
  spiralx.insert(0, x);
  beginShape();
  for (int i=0; i<spiraly.size(); i++) {
    noFill();
    stroke(h, 255, 255);
    vertex(spiralx.get(i), spiraly.get(i));
  }
  endShape();
  point(x, y);
  if (r < width/2) {
    r +=0.9;
    h -=0.1;
  } else if (r > width/2) {
    r = 0;
    t = 0;
    h = 240;
    r += 0.91;
  }
  //Spiral
  //t += 0.1;
  //Triangle
  //t+=2;
  //Pentagon
  //t+=0.91
  //Square
  // t+=1.5;
  //Octagon
  //t+=0.7;
  //SpikeBall
  //t +=2.4;
}
