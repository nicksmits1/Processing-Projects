class Blob {
  float x, y, r, xoff, yoff,H ;
  PVector pos, vel;
  Blob(float _x, float _y, float _r) {
    this.x = _x;
    this.y = _y;
    this.r = _r;
    pos = new PVector(x,y);
    vel = new PVector(0,0);
    xoff = random(-1000,1000);
    yoff = random(-1000,1000);    
    H = random(0,255);
  }
  
  void show(){
    //ellipseMode(CENTER);
    ellipse(x,y,r,r);
  }
  
  void update(){
    PVector newvel = new PVector(mouseX-width/2, mouseY-height/2);
    newvel.setMag(3);
    vel.lerp(newvel, 0.2);
    pos.add(vel);
  }
  
  void foodShow(){
    x = map(noise(xoff),0,1,-1000,1000);
    y = map(noise(yoff),0,1,-1000,1000);
    
    colorMode(HSB);
    fill(H,255,255);
    //ellipseMode(CENTER);
    ellipse(x,y,r,r);
    
    xoff += 0.001;
    yoff += 0.001;
    
  }
  
  //boolean intersect(Blob blob){
  //float dis = dist(blob.x, blob.y, x, y);
  //if(dis < blob.r && r < blob.r){
  //  return true;
  //}else if(dis < (r + blob.r) && r < blob.r){
  //  end = true;
  //  return false;
  //}else { 
  //  return false;
  //}
  
//  if((blob.x + r/2> x - r && blob.x < x + r && blob.y + r/2 > y - r && blob.y < y + r) && blob.r > r){
//    r = 0;
//    blob.r += 20;
//    return true;
//}else {
//  return false;
//}

 //}
 
 void intersect(Blob food){
   //they just ge eaten when they hit width/2 height/2 
   float d = PVector.dist(pos, food.pos);
   if(d < r + food.r ){
      food.r = -1 ;
      r++;
   }
 }

}
