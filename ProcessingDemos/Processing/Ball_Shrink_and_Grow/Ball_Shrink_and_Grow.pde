int d = 50;
int speed = 2;
void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  background(0);
  circle(width/2, height/2, d);
    d = d + speed ;
  if (d > width || d < 0) {
    speed = -speed;
  }
}
