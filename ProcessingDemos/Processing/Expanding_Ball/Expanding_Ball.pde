
int diameter = 50;
void setup() {
  size(200, 200);
}
void draw(){
  diameter = diameter + 1 ;
  fill(0,0,255);
  circle(width/2, height/2, diameter);
  fill(225,0,0);
  circle(width/2, height/2, diameter-20);
}
