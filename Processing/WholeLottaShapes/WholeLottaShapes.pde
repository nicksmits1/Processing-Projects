import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
Box2DProcessing box2d;
ArrayList<Box> boxes;
ArrayList<Circles> circles;
void setup(){
  size(600,600);
  boxes = new ArrayList<Box>();
  circles = new ArrayList<Circles>();
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
}
void draw(){
  background(255);
  box2d.step();
  if(mousePressed){
    Box b = new Box(mouseX,mouseY,20,20);
    boxes.add(b);
  }else if(keyPressed){
    Circles c = new Circles(mouseX,mouseY,20);
    circles.add(c);
  }
  
  for(int i=0;i<boxes.size()-1;i++){
    Box boxx = boxes.get(i);
    boxx.show();
  }
  for(int i=0;i<circles.size()-1;i++){  
    Circles cs = circles.get(i);
    cs.show();
  }
}
