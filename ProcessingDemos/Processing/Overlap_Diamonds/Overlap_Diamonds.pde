float x =10;
float y = 10;

void setup() {
  size(700, 700);
  diamond(200,100);
  diamond(300,100);
  diamond(400,100);
  diamond(500,100);
}

void draw() {
}

void diamond(float x, float y) {
  push();
  rectMode(CENTER);
  translate(x,y);
  rotate(radians(45));
  square(0, 0, 100);
  pop();
}
