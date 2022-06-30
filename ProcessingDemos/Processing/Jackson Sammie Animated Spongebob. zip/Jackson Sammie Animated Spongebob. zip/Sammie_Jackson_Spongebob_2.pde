/* This is an animated
version of spongebob in a dimension of Pennywise 
SPongebob catches balloon in his hand. 
He is also talking with Sandy */ 

int x = 15;
int speedX = 1;
int y = 300;
int speedY= 1;
int z = 455;

void setup() {
  size(500, 500);
}


void draw() {
  background(0, 0, 255);



  fill(#FCF105);
  stroke(#000000);
  square(160, 140, 210);
  //body and head

  fill(#FADE05);
  stroke(#FADE05);
  circle(175, 200, 15);
  circle(205, 300, 12);
  circle(348, 327, 17);
  circle(326, 248, 15);
  circle(340, 160, 12);
  circle(238, 331, 17);
  circle(241, 166, 13);
  circle(185, 350, 14);
  circle(225, 265, 16);
  //holes in body


  fill(#FFFFFF);
  
  circle(220, 205, 70);
  circle(315, 205, 70);
  //white part of the eye


  fill(#0593FC);
  stroke(0);
  circle(220, 205, 40);
  circle(315, 205, 40);
  //iris of eyes

  fill(#000000);
  
  circle(220, 205, 20);
  circle(315, 205, 20);
  //pupil of eyes

  fill(#FFFFFF);
  rect(160, 350, 210, 50, 0, 0, 0, 0);
  //shirt

  fill(#763D00);
  rect(160, 400, 210, 70, 0, 0, 0, 0);
  //first part of shorts

  strokeWeight(25);
  stroke(#FCF105);
  line(215, 485, 215, 500);
  line(320, 485, 320, 500);
  //legs

  fill(#763D00);
  stroke(#000000);
  strokeWeight(1);
  rect(180, 470, 65, 25, 0, 0, 0, 0);
  rect(285, 470, 65, 25, 0, 0, 0, 0);
  //part of shorts

  fill(#FF0808);
  triangle(235, 350, 295, 350, 267, 410);
  //tie

  stroke(#000000);
  fill(#FCF105);
  ellipse(269, 255, 25, 35);
  //nose

  fill(#760000);
  stroke(0);
  arc(265, 298, 90, 15, radians(0), radians(180));
  //smile

  strokeWeight(17);
  stroke(#FCF105);
  line(157, 365, 120, 455);
  //left arm


  circle(120, 455, 15);
  //left hand

  circle(414, 261, 15);
  //hands
  line(375, 365, 412, 265);
  //arms





  fill(255, 0, 0);
  stroke(255, 0, 0);


push();
y = y - speedY;
if (y<20){
y = 300;
}
translate(0,y);
  beginShape();
  vertex(74, 265);
  vertex(49, 238);
  vertex(31, 190);
  vertex(57, 149);
  vertex(102, 151);
  vertex(125, 185);
  vertex(114, 224);
  vertex(74, 265);
  endShape();
  stroke(0);
  strokeWeight(3);
  line(72, 270, 116, 455);

pop();
  //balloon
strokeWeight(1);
  fill(#760000);
  noStroke();
  x = x + speedX;
  arc(265, 298, 90, x, radians(0), radians(180));
  //smile
  if (x <= 15) {
    speedX = abs(speedX);
  }

  if (x>=35) {
    speedX = -abs(speedX);
  }
}

void mousePressed() {
  println(mouseX, mouseY);
  strokeWeight(8);
  point(mouseX, mouseY);
}
