void setup() {
  size(500, 500);
  background(255);
}
void draw() {
  fill(#95741E);
  noStroke();
  circle(100, 100, 50);
  circle(100, 140, 50);
  circle(270, 100, 50);
  circle(270, 140, 50);
  beginShape();
  vertex( 106, 98 );
  vertex( 106, 140 );
  vertex( 257, 140);
  vertex( 257, 98 );
  endShape();
}


void mousePressed() {
  println(mouseX, mouseY);
}
