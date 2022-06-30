
int y = 0;
int x = 250;
int speedY = 2;
int speedX = 2;
void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  background(255);
  fill(#ADE4FF);
  circle(x, y, 50);
  
  
  y = y + speedY;
  
  
  if (y>height-25 || y<0) {
    speedY = -speedY;
  }
 
  
  x = x + speedX;
  
  
  if (x>width-25 || x<0) {
    speedX = -speedX;
  }
  
  
  
  if (x == 500 ){
  speedX = -speedX;
 
}
}
