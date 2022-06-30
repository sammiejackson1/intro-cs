int x = 1;
int y = 400;
void setup () {
  size(400, 400);
  background(255);
}

void draw() {
  background(0);
  stroke(0);
  fill(#FF8EE7);
  x = x + 1;
  circle(x, 200, 20);

  y = y - 1;
  fill(#8EDAFF);
  circle(200, y, 20);

  
}
