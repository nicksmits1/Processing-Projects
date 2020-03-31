import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import fisica.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class FisicaFlappyBird extends PApplet {


FWorld world;
Bird bird;
Pipe pipe[];
int num = 30;
float dis, score, count;
boolean start = false;
boolean dead = false;
PImage bg;
public void setup() {
  
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

public void draw() {
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
  public void restart(){
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

  
class Bird {
  int dia = 20;
  float x = 200;
  float y = height/2;
  float px, py, tick;
  FCircle circle;

  Bird() {
    circle = new FCircle(dia);
    circle.setPosition(x, y);
  }
  public void show() {
    if (!dead) {
      circle.setFill(0, 0, 255);
    } else if (dead) {
      circle.setFill(255, 0, 0);
    }
    world.add(circle);
  }

  public void jump() {
    if (count % 15 == 0) {
      tick = 0;
    }
    if (keyPressed) {
      if (keyCode == UP && tick < 5) {
        circle.addImpulse(0, -40);
        tick++;
      }
    }
  }
}
class Pipe {
  float x;
  float y;
  float by;
  float h;
  float w;
  float gap;
  float px, py;
  int hint, wint;
  Pipe(float dis) {
    h = random(200, 550);
    w = 40;
    gap = 80;
    x = 500 + dis;
    y = 0;
    by = h + gap;
  }

  public void show() {
    if (!dead) {
      x -=2;
    } else if (dead) {
      x += 0;
    }
    fill(0,255,0);
    rect(x, y, w, h);
    rect(x - 10, (y + h)-20, w + 20, 20);
    fill(0);
    rect(x+5, y, 1, h - 40);
    fill(0,255,0);
    rect(x, by, w, height);
    rect(x - 10, by, w + 20, 20);
  }

  public void touched(Bird bird) {
    px = bird.circle.getX();
    py = bird.circle.getY();
    if ((py < h || py > by ) && (px > x && px < x+w) ) {
      bird.circle.setPosition(bird.x, bird.y);
      bird.circle.setStatic(true);
      bird.circle.setFill(255, 0, 0);
      dead = true;
    }
  }
}
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "FisicaFlappyBird" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
