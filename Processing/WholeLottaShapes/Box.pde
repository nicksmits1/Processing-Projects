class Box{
  float x;
  float y;
  float w;
  float h;
  Body body;
 Box(float xpos,float ypos,float he,float wi){
   x = xpos;
   y = ypos;
   h = he;
   w = wi;
   
   BodyDef bd  = new BodyDef();
   bd.type = BodyType.STATIC;
   bd.position.set(box2d.coordPixelsToWorld(x,y));
   
   body = box2d.createBody(bd);
   
   PolygonShape ps = new PolygonShape();
   float box2Dw = box2d.scalarPixelsToWorld(w/2);
   float box2Dh = box2d.scalarPixelsToWorld(h/2);
   ps.setAsBox(box2Dw,box2Dh);
   
   FixtureDef fd = new FixtureDef();
   fd.shape = ps;
   
   fd.density = 1;
   fd.friction = 0.3;
   fd.restitution = 0.5;
   
   body.createFixture(fd);
 }
 void show(){
   Vec2 pos = box2d.getBodyPixelCoord(body);
   
   
   rect(pos.x,pos.y,w,h);
 }
}
