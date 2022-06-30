//AUTOMATED ROCK PAPER SCISSORS GAME
//CHANGES COLOR AFTER EVERY PRESS
int number;
void setup() {
  size(500, 500);
  textAlign(CENTER, CENTER);
}
void draw() {
  fill(0);
  textSize(30);
  text("Rock Paper Scissors Game",width/2,25);
}

void mousePressed() {
  number = int(random(1, 4));
  println(int(random(1, 4)));
  background(#ADF7FF);
  fill(random(255), random(255), random(255));
  textSize(80);
    //TYPES ROCK
  if (number == 1) {
    text("rock", width/2, height/2);
    //TYPES SCISSORS
  } else if (number == 2) {
    text("scissors", width/2, height/2);
    //TYPES PAPER
  } else if (number == 3) {
    text("paper", width/2, height/2);
  }
}
