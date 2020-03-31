import bRigid.*;
import bRigid.test.*;
import bRigid.util.*;
import javax.vecmath.Vector3f;
import com.bulletphysics.collision.shapes.CollisionShape;
import peasy.*;

PeasyCam cam;
BPhysics physics;
BBox box;
BSphere sphere;

void setup(){
  size(1000, 1000, P3D);
  frameRate(60);
  cam = new PeasyCam(this, 600);
  
  Vector3f min = new Vector3f(-120, -25, -120);
  Vector3f max = new Vector3f(120, 250, 120);
  
  physics = new BPhysics(min, max);
  
  physics.world.setGravity(new Vector3f(0, 500, 0));
  
  box = new BBox(this, 1, 15, 15, 15);
  sphere = new BSphere(this, 1, 0, 0, 0, 15);
  
  BForceAttraction f0 = new BForceAttraction(new Vector3f(10, -150, 1), 500, 1000);
  physics.addBehavior(f0);
}
float x = 0;
void draw(){
  background(255);
  lights();
  if (x < 5){
  if(frameCount % 60 == 0){
    Vector3f pos = new Vector3f(random(30), -150, random(1));
    if (x % 2 == 0){
    BObject r = new BObject(this, 100, box, pos, true);
    physics.addBody(r);
    x++;
    }else{
    BObject r = new BObject(this, 100, sphere, pos, true);
    physics.addBody(r);
    x++;
    }
  }
  }
  physics.update();
  physics.display();
}
