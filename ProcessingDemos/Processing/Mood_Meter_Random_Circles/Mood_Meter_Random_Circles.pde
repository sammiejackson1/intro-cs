
int numberX;
int numberY;
void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  circle(numberX, numberY, 20);
  numberX = int(random(1, 500));
  numberY = int(random(1, 500));
  if (numberX<=250 && numberY<=250) {
    fill(#FF4050);
  }
  if (numberX<= 250 && numberY>=250) {
    fill(#40A7FF);
  }

  if (numberX>=250 && numberY>=250) {
    fill(#89F06D);
  }

  if (numberX>=250 && numberY<=250) {
    fill(#FFE940);
  }
}
