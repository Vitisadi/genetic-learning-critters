int lifespan;
int startx;
int starty;
int endx;
int endy;
int age;
Population p;

void setup() {
  fullScreen();
  startx = 50;
  starty = height - 50;
  endx = width - 50;
  endy = 50;
  age = 0;
  lifespan = 250;
  p = new Population(200);
}


void draw() {
  background(200);
  p.live();
}