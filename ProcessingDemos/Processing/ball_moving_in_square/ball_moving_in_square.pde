//ball moving in a continual square
float x = 20;
float speedX = 5;
float y = 20;
float speedY = 5;
void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  circle(x, y, 40);
  
  //move down
  if (x == 20) {
    y = y + abs(speedY);
  }
  
  //moving to the right
  if (y >= 480) {
    x = x + abs(speedX);
    y = 480;
  }

//moving upwards
  if (x>=480) {
    y = y + 2*-abs(speedY);
    x = 480;
  }
//moving to the left
  if (y<=20) {
    x = x + -abs(speedX);
    y = 20;
  }
}
