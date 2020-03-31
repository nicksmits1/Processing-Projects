float k = 1;
void setup(){
  size(600,600);
  frameRate(15);
}

void draw(){
  background(0);
  translate(width/2,height/2);
  beginShape();
  stroke(255);
  noFill();
  for(float i=0;i<TWO_PI*10;i+=0.01){
    float r = 200 * cos(k * i);
    float x = r * cos(i);
    float y = r * sin(i);
    vertex(x,y);
  }
  endShape();
      //k += 0.01;
  if(mousePressed){
    k = random(0,10);
    println(k);
  }
}
