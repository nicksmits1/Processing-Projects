ArrayList<Snake> snake = new ArrayList<Snake>();
float count;
float sLength = 20;
boolean eat = false;
SnakeHead sh;
Food f;
void setup() {
  size(600, 600);
  sh = new SnakeHead();
  snake.add(new Snake(-10, -10));
  f = new Food();
}

void draw() {
  background(0);
  //sh.showNoise();
  //sh.showmouse();
  f.show();
  sh.move();
  for (int i=0; i<snake.size(); i++) {
      f.intersect(sh);
      println(snake.size());
    if (count % 30 == 0) {
      snake.add(new Snake(sh.x, sh.y));
      count =0;
   } else if (snake.size() > sLength) {
  snake.remove(i);
 }
Snake s = snake.get(i);
s.show();
count++;
}
}
