float t;
FloatList wave;
void setup() {
  wave = new FloatList();
  size(1000, 600);
}

void draw() {
  background(0);

  translate(200, 300);

  float r = 100;

  stroke(255);
  fill(0);
  ellipse(0, 0, r*2, r*2);
  
  float x =0;
  float y =0;
  
  for(int k=0;k<2;k++){
    
  float prevx = x;
  float prevy = y;

  r = 80 * (4/ (1* PI));
  x += r * cos(1 * t);
  y += r * sin(1 * t);
  wave.insert(0, y);
  
  noFill();
  ellipse(prevx,prevy,r,r);


  strokeWeight(8);
  point(x, y);
  strokeWeight(1);
  line(prevx, prevy, x, y);
  t += 0.02;
  beginShape();
  for (int i = 0; i < wave.size(); i++) {
    noFill();
    vertex(i + 400, wave.get(i));
    line(x, y, 400, y);
  }
  endShape();
  }
}
