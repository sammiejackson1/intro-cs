
int d = 50 ;
boolean grow = true;

void setup() {
  size(500, 500);
  background(255);
}


void draw() {
  background(0);
  circle(width/2, height/2, d);
  if (grow);
  d = d + 1;
  //can also be written as d++;
  if (d > width) {
    grow = false;
  }
} else {
  d = d - 1;
}


/* if
 (d > width)
 
 {
 d = 0;
 }
 */
}
