float leftPupilXPos;
float leftPupilYPos;

float rightPupilXPos;
float rightPupilYPos;

float mouthHeight;

void setup() {
  size(800,800);
}

void draw() {
  background(255,0,0); // red background
  
  fill(255,255,0); // yellow
  ellipse(400,400,600,600); // head
  
  fill(255); // white
  ellipse(280,280,200,200); // left eye
  ellipse(520,280,200,200); // right eye
  
  mouthHeight = map(mouseY,0,height,-200,200); // mapped mouthHeight variable
  
  fill(252,204,225); // pink
  ellipse(400,550,450,mouthHeight); // mouth
  
  leftPupilXPos = map(mouseX-120,0,width,220,340); // mapped leftPupilXPos variable
  leftPupilYPos = map(mouseY,0,height,220,340); // mapped leftPupilYPos variable
  
  rightPupilXPos = map(mouseX+120,0,width,460,580); // mapped rightPupilXPos variable
  rightPupilYPos = map(mouseY,0,height,220,340); // mapped rightPupilYPos variable
  
  fill(0); // black
  ellipse(leftPupilXPos,leftPupilYPos,10,10); // left pupil
  ellipse(rightPupilXPos,rightPupilYPos,10,10); // right pupil
}