// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for this video: https://youtu.be/f0lkz2gSsIk

float ranA = random(5,20);
float ranB = random(10,30);
float ranC = random(5.0,15.0);
float ranCdiv = random(3.0,7.0);

float x = 0.01;
float y = 0;
float z = 0;

float a = ranA;
float b = ranB;
float c = ranC/ranCdiv;

ArrayList<PVector> points = new ArrayList<PVector>();


void setup() {
  size(800, 600, P3D);
  colorMode(HSB);
}

void draw() {
  background(0);
  for(int i = 0; i < 10; i++){
  float dt = 0.01;
  float dx = (a * (y - x))*dt;
  float dy = (x * (b - z) - y)*dt;
  float dz = (x * y - c * z)*dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;

  points.add(new PVector(x, y, z));
  }
  translate(0, 0, -80);
  translate(width/2, height/2);
  scale(5);
  stroke(255);
  noFill();

  float hu = 0;
  beginShape();
  for (PVector v : points) {
    stroke(hu, 255, 255);
    vertex(v.x, v.y,v.z);
    //PVector offset = PVector.random3D();
    //offset.mult(0.1);
    //v.add(offset);

    hu += 0.1;
    if (hu > 255) {
      hu = 0;
    }
  }
  endShape();


  //println(x,y,z);
}
