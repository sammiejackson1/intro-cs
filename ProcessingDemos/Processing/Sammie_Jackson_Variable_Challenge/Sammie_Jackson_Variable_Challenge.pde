int x = 40;
int c = 0;
int y = 0;
int w = 300;
void setup(){
size(500,500);
background(255);
}

void draw(){
  background(0);
  //trinagle increasing size
  fill(255);
triangle(0,2,0,62,x,30);
x = x + 1;


//circle fading in 
fill(c,0,0);
circle(width/2, height/2, 130);
c = c + 1;

//square moving across
fill(255);
square(300, y, 30);
y = y + 1;

if (y>width+20)
{
  y = -20;
}



//square shirnking
fill(255);
square(0, 0, w);
w = w - 1;
}
