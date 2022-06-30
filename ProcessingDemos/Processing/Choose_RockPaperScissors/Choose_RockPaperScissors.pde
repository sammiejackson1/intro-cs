void setup() {
  size(500, 500);
  background(0);
  textAlign(CENTER, CENTER);
  textSize(75);
}
void draw() {
  textSize(40);
  fill(255);
  text("Rock, Paper, Scissors Game",width/2, 35);
}

void keyPressed() {
  background(0);
  if (key == CODED) {
    if (keyCode == UP) {
      fill(#FFADF6);
      text("SCISSORS", width/2, height/2);
    } else if (keyCode == DOWN) {
      fill(#ADCDFF);
      text("PAPER", width/2, height/2);
    }
    else if (keyCode == LEFT) {
      fill(#DAADFF);
    text("ROCK", width/2, height/2);
  }
  } 
}
