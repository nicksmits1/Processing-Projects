void ellipse(){ 
  float RandomR = random(0, 255);
  float RandomG = random(0, 255);
  float RandomB = random(0, 255);
  stroke(RandomR, RandomG, RandomB);
  fill(RandomR, RandomG, RandomB);
  ellipse(height/2, width/2, 40, 40);
  
}
