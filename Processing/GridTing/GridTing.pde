int num = 27;
float row;
float column;
float xarr[] = new float[num];
float yarr[] = new float[num];
float xfilled[] = new float[num*num];
float yfilled[] = new float[num*num];
int count;
boolean red = false;
boolean clicked = false;
void setup(){
  size(600,550);
  background(0);
  for(int i=0;i<num-1;i++){
    for(int k=0;k<num-1;k++){
    xarr[k] = row;
    row += 22;
    }
    yarr[i] = column;
    column +=22;
    row =0;
  }
}

void draw(){
  for(int i=0;i<num-1;i++){
    for(int k=0;k<num-1;k++){
    fill(255);
    rect(xarr[k],yarr[i],20,20);
    }
  }
  for(int i=0;i<num-1;i++){
    fill(225,0,0);
    rect(xfilled[i],yfilled[i],20,20);
  }
  count = 0;
  for(int i=0;i<num-1;i++){
    for(int k=0;k<num-1;k++){
      if((mouseX > xarr[k] && mouseX < xarr[k]+20 && mouseY > yarr[i] && mouseY < yarr[i]+20)&& mousePressed == true){
        count++;
        xfilled[count] = xarr[k];
        yfilled[count] = yarr[i];
        fill(244,0,0);
        rect(xarr[k],yarr[i],20,20);
        }
      }
    }
  }
