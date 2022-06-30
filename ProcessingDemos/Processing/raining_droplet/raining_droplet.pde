float x = 50;
float y = 50;
float r = 0;
float r2= 5;
float speedR = 12;
void setup() {
  size(500, 500);
}

void draw() {
  background(#AACCDE);
  r = r + speedR;
  teardrop(width/2, r,20);
  if (r > 500) {
    r = 0;
  }
  
  
  teardrop(100, r - 40,10);
  teardrop(357, r + 20,30);
  teardrop(189, r + 90,25);
  teardrop(278, r - 80,18);
  teardrop(452, r + 30,10);
  teardrop(304, r - 25,32);
  teardrop(194, r,28);
}

void teardrop(float x, float y, float d) {
  noStroke();
  fill(0, 0, 255);
  arc(x, y, d, d,
    radians(0), radians(180), OPEN);
  triangle(x-d/2, y, x, y-d, x+d/2, y);
}
