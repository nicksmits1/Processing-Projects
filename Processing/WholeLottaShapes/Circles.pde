class Circles{
  float x;
  float y;
  float r;
  Body body;
  Circles(float xpos,float ypos, float rad){
    x = xpos;
    y = ypos;
    r = rad;
   BodyDef bd  = new BodyDef();
   bd.type = BodyType.DYNAMIC;
   bd.position.set(box2d.coordPixelsToWorld(x,y));
   
   body = box2d.createBody(bd);
   
   CircleShape circle = new CircleShape();
   circle.m_radius = box2d.scalarPixelsToWorld(r);
   
   FixtureDef fd = new FixtureDef();
   fd.shape = circle;
   
   body.createFixture(fd);
  }
  void show(){
    Vec2 pos = box2d.getBodyPixelCoord(body);
    
    circle(pos.x,pos.y,r);
  }
  
}
