import bRigid.*;
import javax.vecmath.Vector3f;
import peasy.*;

BPhysics physics;
PeasyCam cam;
BBox box [];
Vector3f pos;

void setup() {
  cam = new PeasyCam(this, 280);
  size(1280, 720, P3D);
  physics = new BPhysics();
  BPlane ground = new BPlane(new Vector3f(0, 100,0), new Vector3f(0, -1, 0));
  physics.addPlane(ground);
  physics.world.setGravity(new Vector3f(0, 50, 0));

  box = new BBox [8];
  for (int i=0; i<8; i++) {
    box[i] = new BBox(this, 1, 50, 50, 50);
  }
  pos = new Vector3f(100, 50, 1);
}
float end = 0;
float x = 0;
void draw() {
  background(255);
  lights();
  if (x< 1){
  BObject r = new BObject(this, 100, box[0], pos, true);
  physics.addBody(r);
  x++;
  }
  physics.update();
  physics.display();
}
