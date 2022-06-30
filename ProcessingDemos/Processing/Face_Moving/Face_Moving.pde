float pupil = 0;
float pupilSpeed = 1;
float face = 0;
float faceSpeed = 0.5;
void setup(){
size(500,500);
}

void draw(){
background(0);

push();
translate(0, face);
face = face + faceSpeed;
fill(255,255,0);
strokeWeight(3);
circle(width/2, height/2, 200);
//face

fill(255);
circle(width/2 - 40, height/2 - 20, 40);
circle(width/2 + 40, height/2 - 20, 40);
//iris
fill(0);

translate(pupil,0);
circle(width/2 - 45, height/2 - 20, 25);
circle(width/2 + 35, height/2 - 20, 25);
//pupil
pop();

pupil = pupil + pupilSpeed;
if(pupil > 15) {
pupilSpeed = -pupilSpeed;
}

if (pupil < -5) {
pupilSpeed = -pupilSpeed;
}
push();
translate(0,face);
strokeWeight(8);
fill(255,0,0);
arc(width/2,height/2 + 30, 120, 100, 
radians(0), radians(180));
//smile
pop();

}
