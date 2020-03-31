import fisica.*;
FWorld world;
FCircle circle,circle2;
FBox box;
  float by = 300;
  float bx = 300;
  float wx = bx - 45;
  float wy = by + 30;
  float wx2 = bx + 45;
  float wy2 = by + 30;
  float dia = 20;
  float rh = 20;
  float rw = 100;
  float r = 5;
public void setup(){
  size(600,600);
    Fisica.init(this);
    world = new FWorld();
    world.setGravity(0,300);
    world.setEdges();
    world.setEdgesRestitution(0.8);
    world.setEdgesFriction(5);
    
    circle = new FCircle(dia);
    circle2 = new FCircle(dia);
    box = new FBox(rw,rh);
    FRevoluteJoint joint,joint2; 
    
    box.setPosition(bx,by);
   
    circle.setRotatable(true);
    circle.setPosition(wx,wy);
    circle.setFriction(2);
    
    circle2.setRotatable(true);
    circle2.setFriction(2);
    circle2.setPosition(wx2,wy2);
    
    joint = new FRevoluteJoint(box,circle);
    joint.setAnchor(wx,wy);
    joint.setEnableLimit(true);
    joint.setLowerAngle(radians(-10));
    joint.setUpperAngle(radians(10));
    joint2 = new FRevoluteJoint(box,circle2);
    joint2.setAnchor(wx2,wy2);
    //joint2.setAnchor(wx2,wy2 - (rh/2));
    joint2.setEnableLimit(true);
    joint2.setLowerAngle(radians(-10));
    joint2.setUpperAngle(radians(10));
    
    world.add(box);
    world.add(circle);
    world.add(circle2);
    world.add(joint);
    world.add(joint2);
}

public void draw(){
  background(255);
  world.step();
  world.draw();
}

public void keyPressed(){
  if(keyCode == LEFT){
  r+=5;
  circle.setRotation(r);
  circle.setAngularVelocity(r);
  circle.addTorque(r);
  circle2.setRotation(r);
  circle2.setAngularVelocity(2);
  circle.addTorque(r);
  }else if(keyCode == RIGHT){
   r+=5;
  circle2.setRotation(-r);
  box.addForce(r,0);
  //circle2.setAngularVelocity(-2);
  circle.setRotation(-r);
  //circle.setAngularVelocity(-2);
  }
}
