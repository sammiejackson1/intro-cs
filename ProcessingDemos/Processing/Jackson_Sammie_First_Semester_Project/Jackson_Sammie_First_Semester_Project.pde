/* By: Sammie Jackson 6/29/22
 This animation is of a dog in the park
 who is hungry. Then a treat starts to come
 down and the dog starts sticking his
 tongue in and out. Once he gets the treat,
 the dog is happy and his tongue stops moving.
 
 The hardest part of the project was making the bone
 shrink down into the dogs mouth. Another hard part of 
 this project was actually creating the dog out of shapes
 and making my own shapes, for example, the ears.
 */


int y = -70;
int speedY = 1;
int number;
float tongue = 360;
float speedT = 0.5;
String hungry = "Ozzy is Hungry!";
int cloud = 1;
int speedC = 1;
int cloud2 = 1;
int speedD = 1;
int e = 0;
int speedE = 3;
float scaleFactor = 1;
float scaleSpeed;
//y= y value of where the dog treat is
//speedY = speed in which the treat moves
//number = random number that is generated
//tongue = location of the tongue
//speedT = speed in which the tongue moves in and out
//cloud = x coordiante of frist cloud
//speedC = speed in which first cloud is moving arcoss screen
//cloud2 = x coordiante of second cloud
//speedD = speed in which second cloud is moving arcoss screen
//e = height of the eyelid
//speedE = speed in which the height of the eyelid increases

void setup() {
  size(500, 500);
  background(#4BD9FF);
  scaleSpeed = -0.01;
  number = int(random(1, 7));
  println(int(random(1, 7)));
}

void draw() {
  background(#4BD9FF);

  textSize(50);
  fill(255);
  text(hungry, 110, 50);
  if (y >=310) {
    hungry = "Ozzy is happy!";
  }

  //first cloud
  fill(255);
  noStroke();
  cloud = cloud + -abs(speedC);
  push();
  translate(cloud, 0);
  circle(380, 150, 70);
  circle(426, 151, 70);
  circle(475, 154, 70);
  circle(408, 124, 70);
  circle(443, 126, 70);
  pop();


  //second cloud
  push();
  cloud2 = cloud2 + -abs(speedD);
  translate(cloud2, 0);
  circle(65, 80, 70);
  circle(35, 80, 70);
  circle(3, 80, 70);
  circle(36, 63, 70);
  circle(10, 63, 70);
  pop();


  //grass in background
  fill(#53D369);
  beginShape();
  vertex(0, 417);
  vertex(0, 500);
  vertex(500, 500);
  vertex(500, 417);
  vertex(0, 417);
  endShape();
//spikes of grass
  beginShape();
  vertex(0, 422);
  vertex(22, 404);
  vertex(37, 422);
  vertex(61, 404);
  vertex(87, 422);
  vertex(402, 422);
  vertex(419, 404);
  vertex(431, 422);
  vertex(450, 404);
  vertex(472, 422);
  vertex(0, 422);
  endShape();
  
  //fence
  fill(255);
  stroke(255);
  beginShape();
  vertex(0, 350);
  vertex(0, 378);
  vertex(500, 378);
  vertex(500, 350);
  vertex(0, 350);
  endShape();
  rect(23, 312, 15, 120);
  rect(110, 312, 15, 120);
  rect(385, 312, 15, 120);
  rect(478, 312, 15, 120);
  stroke(0);


  //body of the dog
  fill(#A2A2A2);
  ellipse(width/2, 495, 220, 210);
  fill(255);



  //collar on dogs neck
  fill(#FFDB4B);
  fill(0, 255, 0);
  arc(width/2, 415, 190, 100,
    radians(0), radians(180), CHORD);



  //left ear
  push();
  translate(0, 100);
  fill(#A2A2A2);
  stroke(0);
  strokeWeight(3);
  beginShape();
  vertex(171, 172);
  vertex(81, 307);
  vertex(83, 334);
  vertex(96, 349);
  vertex(111, 355);
  vertex(131, 352);
  vertex(146, 345);
  vertex(156, 335);
  vertex(171, 172);
  endShape();
  fill(#A2A2A2);

  //right ear
  beginShape();
  vertex(336, 180);
  vertex(407, 299);
  vertex(408, 315);
  vertex(400, 326);
  vertex(388, 333);
  vertex(367, 337);
  vertex(351, 332);
  vertex(338, 321);
  vertex(334, 312);
  vertex(336, 180);
  endShape();


  //tongue
  fill(255, 0, 0);
  tongue = tongue + speedT;
  ellipse(width/2, tongue, 25, 40);

  if (tongue<=350) {
    speedT= abs(speedT);
  }
  if (tongue >=375) {
    speedT= -abs(speedT);
  }
  if (y>=310) {
    tongue = 360;
  }



  //head of dog
  fill(#D8D8D8);
  strokeWeight(3);
  circle(width/2, height/2, 215);

  //nose
  fill(0);
  arc(width/2, height/2+30, 50, 40,
    radians(0), radians(180), CHORD);
  strokeWeight(4);
  line(250, 295, 250, 350);
  noFill();
  arc(270, 346, 40, 20,
    radians(0), radians(180), OPEN);
  arc(230, 346, 40, 20,
    radians(0), radians(180), OPEN);


  //eyes
  fill(255);
  strokeWeight(3);
  ellipse(width/2 - 45, height/2-28, 30, 55);
  ellipse(width/2 + 45, height/2-28, 30, 55);
  fill(0);
  ellipse(width/2 - 45, height/2-28, 10, 35);
  ellipse(width/2 + 45, height/2-28, 10, 35);
  fill(255);
  strokeWeight(1);
  circle(206, 213, 12);
  circle(296, 213, 12);
  pop();


  //blinking eyelids
  fill(#A2A2A2);
  stroke(0);
  e = e + speedE;
  
  //bottom
  arc(205, 315, 30, e,
    radians(0), radians(180));
  arc(295, 315, 30, e,
    radians(0), radians(180));
    
  //top
  arc(205, 315, 30, 41,
    radians(180), radians(360));
  arc(295, 315, 30, 41,
    radians(180), radians(360));
  if (e<=0) {
    speedE = abs(speedE);
  }
  if (e>=65) {
    speedE = -abs(speedE);
  }


  //Dog collar medallion
  fill(#FFCB1F);
  circle(210, 475, 35);
  fill(0);
  textSize(16);
  text("Ozzy", 194, 480);


  /*dog treat that changes "flavor"
   for every run*/

  if (number == 1) {
    fill(#95741E);
  } else if (number == 2) {
    fill(#644B0B);
  } else if (number == 3) {
    fill(#644B0B);
  } else if (number == 4) {
    fill(#D8A625);
  } else if (number == 5) {
    fill(#312609);
  } else if (number == 6) {
    fill(#6C6248);
  } else if (number == 7) {
    fill(#7C4119);
  }


  //dog treat itself
  push();
  if (y < 315) {
    y = y + abs(speedY);
  }
  translate(0, y);
  if (y>=315) {
    translate(243.5, 119);
    scale(scaleFactor);
    translate(-scaleFactor*243.5, -scaleFactor*119);
    if (scaleFactor>0) {
      scaleFactor = scaleFactor + scaleSpeed;
    }
  }


  noStroke();
  circle(157, 100, 50);
  circle(157, 140, 50);
  circle(327, 100, 50);
  circle(327, 140, 50);
  beginShape();
  vertex( 168, 98 );
  vertex( 168, 140 );
  vertex( 319, 140);
  vertex( 319, 98 );
  endShape();
  fill(#E3CCA3);
  textSize(30);
  text("MILKBONE", 175, 130);
  pop();
}

void mousePressed() {
  println(mouseX, mouseY);
  strokeWeight(10);
  point(mouseX, mouseY);
}


/* feedback:
 From:Bea M.
 - add text onto bone(brandname)
 -when the dog gets the treat make the text
 say that he is happy
 From: Sienna C. and Alex F.
 -make eyelids shorter or blink faster
 -i made the change from this suggestion
 -make a tail wagging
 - if i had more time i definately would
 have tried to complete this
 -add definition to grass
 -add white fence
 - i decided to do this idea because it added
 to the scenery of the park and was a
 fairly simple task
 */
