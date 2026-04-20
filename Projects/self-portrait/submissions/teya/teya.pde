int eye1 = 335; //EYE X COORDINATE
int eye2 = 455; //EYE X COORDINATE
boolean bigSmile = false; //SMILE CHANGE
boolean confetti = false; //CONFETTI CHANGE

void setup () {
  size(800, 800);
  }
 
 void draw () {
background(168, 201, 227);

//BARRIER BETWEEN INSTRUCTIONS AND DRAWING (LOOP)
for (int i = 0; i < 8; i++) {
  fill(96, 138, 156);
  circle(50 + i*90, 145, 10);
}

//INSTRUCTIONS
fill(0);
textSize(25);
text("INSTRUCTIONS:", 50, 45);
text("Drag the cursor side to side to move the eyes", 50, 75);
text("Press the space bar to open and close the mouth", 50, 102);
text("Press the mouse for confetti", 50, 128);

//HAIR
noStroke();
fill(13, 10, 9);
ellipse(400, 415, 350, 430);

 //BODY
noStroke();
fill(234, 217, 250);
ellipse(400, 675, 315, 600);

   //HEAD
noStroke();
fill(230, 187, 138);
circle(400, 400, 325);  

//EYES
noStroke();
fill(255);
ellipse(335, 325, 50, 55);
ellipse(455, 325, 50, 55);
  //pupils
noStroke();
fill(0);
ellipse(eye1, 325, 30, 35);
ellipse(eye2, 325, 30, 35);

//EYE ANIMATION/MOVEMENT
if (mouseX < 400) {
eye1 = eye1 - 2;
eye2 = eye2 - 2;
}

else if (mouseX > 400) {
 eye1 = eye1 + 2;
 eye2 = eye2 + 2;
}

//EYE LIMITS
eye1 = constrain(eye1, 325, 345);
eye2 = constrain(eye2, 445, 465);

//MOUTH
if (bigSmile) {
  arc(400, 445, 120, 90, 0, PI); // bigger smile
} else {
  arc(400, 445, 120, 40, 0, PI); // normal smile
}

//CONFETTI
if (confetti) {
  for (int i = 0; i < 100; i++) {
    fill(random(255), random(255), random(255));
    noStroke();
    circle(random(width), random(height), random(5, 10));
  }
}

//CURSOR
noCursor();
fill(234, 217, 250);
circle(mouseX, mouseY, 20);
 
//}

 }

void mousePressed () {
//ADD CONFETTI (RAIN CONFETTI AND STOP CONFETTI)
confetti = !confetti;
   
}
   
void keyPressed () {
//SMILE CHANGE (BIG AND SMALL)
bigSmile = !bigSmile;  
   
 }
