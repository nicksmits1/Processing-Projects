class Block{
int num = 20;
float bx = 0;
float by = 10;
float[] xarr = new float[num];
float[] yarr = new float[num];

Block(float x,float y){
  bx = x;
  by = y;
  
  for(int i =0;i<num;i++){
      yarr[i] = by;
      xarr[i] = bx;
      bx += 22;
    }
  
}
  void show(){
  //  for(int i =0;i<num;i++){
  //    if(ey > xarr[i] && ey < xarr[i]+20 && ex > yarr[i] && ex < yarr[i] + 20){
  //      eydir = eydir*-1;
  //      xarr[i] =-10;
  //    }else{
  //      by = 20;
  //     rect(xarr[i],by,20,20);
  //    }
  //  }
  //  bx = 0; 
  rect(bx,by,20,20);
}
}
