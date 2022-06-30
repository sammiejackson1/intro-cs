
String welcome = "Hello World!";
/* global variable which means
it is this for the entire code not just
in void setuo
*/

void setup(){
size(500,500);

text(welcome,width/2, height/2);

}

void draw(){
background(0);
textSize(50);
text(welcome,width/2, height/2);
}

void mousePressed(){
 welcome = "goodbye.";
println(welcome);
}
