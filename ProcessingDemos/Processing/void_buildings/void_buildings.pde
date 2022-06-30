
void setup(){
size(500,500);

}

void draw(){
background(#243C90);

strokeWeight(1);
fill(#C9CACB);

building(0,125);
building2(115,125);

strokeWeight(5);
fill(#767676);
rect(0,385,500,115);
}

void building(float x, float y){
rect(x,y,115,260);
square(x+8,y+10,35);
square(w/2+5,y+10,35);
square(x+8,y+55,35);
square(w/2+5,y+55,35);
square(x+8,y+100,35);
square(w/2+5,y+100,35);
square(x+8,y+145,35);
square(w/2+5,y+145,35);


}
void building2(float a, float b){
rect(a,b,100,285);
}

void mousePressed(){
println(mouseX,mouseY);

}
