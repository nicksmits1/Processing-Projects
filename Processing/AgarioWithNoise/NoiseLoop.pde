class NoiseLoop{
  float dia;
  float cx;
  float cy;
  
  NoiseLoop(float dia){
    this.dia = dia;
    cy = random(100000);
    cx = random(100000);
  }
  float value(float angle){
    float xoff = map(cos(angle),-1,1,cx,cx + dia);
    float yoff = map(cos(angle),-1,1,cy,cy + dia);
    float r = noise(xoff,yoff);
    return r;
  }
}
