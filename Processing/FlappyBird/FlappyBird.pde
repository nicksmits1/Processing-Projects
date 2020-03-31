int num = 25;
float change = 200;
Bird bird = new Bird(20);
Pipes pipes[] = new Pipes[num];
void setup(){
  size(500,300);
  background(51);
  for(int i =0; i < num - 1;i++){
    pipes[i] = new Pipes(change);
    change += 200;
  }
}

void draw(){
  background(51);
  bird.show();
  bird.update();
  bird.walls();
  for(int i = 0; i<num-1;i++){
  pipes[i].show();
  bird.collision(pipes[i]);
    
  }
  }
