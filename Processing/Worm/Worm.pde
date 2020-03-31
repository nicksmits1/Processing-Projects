ArrayList<Snake> snake = new ArrayList<Snake>();
float count;
SnakeHead sh;
void setup(){
  size(600,600);
  sh = new SnakeHead();
    snake.add(new Snake(-10,-10));
}

void draw(){
  background(0);
  sh.show();
  //sh.showmouse();
  for(int i=0; i<snake.size();i++){
  if(count % 30 == 0){
   snake.add(new Snake(sh.x,sh.y));
  }else if(snake.size() > 15){
    snake.remove(i);
  }
  Snake s = snake.get(i);
  s.show();
  count++;
  }
}
