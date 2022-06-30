void setup(){
size(500,500);
background(#CAADFF);
}

void draw(){
  fill(255,0,0);
  push();
  translate(55,0);
beginShape();
vertex(230,337);
vertex(362,177);
vertex(293,104);
vertex(229,164);
vertex(153,104);
vertex(100,176);
vertex(230,337);
endShape();
pop();
}

void mousePressed(){
println(mouseX,mouseY);
point(mouseX,mouseY);
strokeWeight(8);
}
