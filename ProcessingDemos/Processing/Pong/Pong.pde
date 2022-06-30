int x = 250;
int y = 250;
int speedX = 3;
int speedY = 2;
void setup(){
size(500,500);
background(255);

}


void draw(){
 strokeWeight(1);
 background(0);
fill(#ADE4FF);
circle(x,y,50);

strokeWeight(10);
stroke(255);
line(10,100,10,350);
 line(490,100,490,350);
 
 y = y + speedY;
 if (x == 10 || x == 490){
 speedY = -speedY;
 }
 
 x = x + speedX;
 if (x == 10 || x == 490){
 speedX = -speedX;
 }
 
}
