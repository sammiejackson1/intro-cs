void draw(){}
void mousePressed(){
println(mouseX,mouseY);
strokeWeight(7);
point(mouseX,mouseY);
}


void setup(){
  
  size(500,500);
  background(#5FCEFF);
beginShape();
fill(#7F8081);
vertex(165,186);
vertex(129,449);
vertex(344,450);
vertex(300,186);


endShape();

strokeWeight(10);
stroke(0,0,0);
line(237,163,237,49);

strokeWeight(1);
beginShape();
fill(#7F8081);
vertex(114,186);
vertex(354,186);
vertex(352,139);
vertex(315,139);
vertex(310,167);
vertex(286,167);
vertex(280,139);
vertex(243,139);
vertex(240,167);
vertex(211,167);
vertex(205,139);
vertex(169,139);
vertex(164,167);
vertex(144,167);
vertex(139,139);
vertex(113,139);
vertex(111,157);
vertex(114,186);
endShape();

beginShape();
fill(#EAF9FF);
vertex(200,230);
vertex(262,230);
vertex(275,298);
vertex(184,298);
vertex(200,230);

endShape();

fill(255,0,0);
beginShape();
vertex(237,47);
vertex(237,90);
vertex(285,64);
endShape();

strokeWeight(4);
line(228,231,228,294);
line(192,262,270,263);

beginShape();
fill(#895E19);
vertex(198,450);
vertex(198,385);
vertex(257,385);
vertex(257,450);
endShape();

point(211,418);
} 
