import fisica.*;
FWorld world;
Bird bird;
Pipe pipe[];
int num = 30;
float dis, score, count;
boolean start = false;
boolean dead = false;
PImage bg;
void setup() {
  size(600, 600);
  bg = loadImage("Flappybackground.jpg");
  bg.resize(height, width);
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 600);
  bird = new Bird();
  pipe = new Pipe[num];
  bird.show();
  bird.circle.setStatic(true);
  for (int i=0; i<num-1; i++) {
    pipe[i] = new Pipe(dis);
    dis += 200;
  }
}

void draw() {
  count ++;
  background(255);
  image(bg, 0, 0);
  fill(200, 255, 0);
  rect(0, height-10, 1000, 10);
  world.step();
  world.draw();
  if(mousePressed){
    restart();
  }
  if (keyPressed && keyCode == SHIFT) {
    start = true;
  }
  if (start) {
    bird.circle.setStatic(false);
    bird.jump();
    for (int i=0; i<num-1; i++) {
      fill(0, 255, 0);
      pipe[i].show();
      pipe[i].touched(bird);
    }
    if (dead) {
      fill(255, 0, 0);
      textSize(120);
      text("u Dead", 50, height/2);
    }
  } else if (!start) {
    fill(0, 0, 255);
    textSize(50);
    text("Flappy Bird", 200, height/2 - 60);
    textSize(25);
    text("Press Shift to start", 200, height/2 -30);
  }
}
  void restart(){
FWorld world;
Bird bird;
Pipe pipe[];
int num = 30;
float score, count;
float dis = 0;
boolean start = false;
boolean dead = false;
PImage bg;
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 600);
  bird = new Bird();
  pipe = new Pipe[num];
  bird.show();
  bird.circle.setStatic(true);
  for (int i=0; i<num-1; i++) {
    pipe[i] = new Pipe(dis);
    dis += 200;
  }
  }

  
