
boolean blink = false;
String mouth = "Press Spacebar";
String eyes = "Click Mouse";
float faceX = 300;
float faceY = 300;
float leftEyeX;
float leftEyeY;
float rightEyeX;
float rightEyeY;
float torsoX=300;
float torsoY=500;
float hairX;
float hairY;
float expression = 0;
float hairCounter = 0;
PImage img;
void setup()
{
  size(600, 600);
  img = loadImage("drumsticks.jpeg");
  background(#A22638);
}

void draw() {
 // writing
  textSize(20);
  text(mouth+" + "+eyes, 300, 50);
  //hair
  stroke(60, 30, 10);
  strokeWeight(2);
  while (hairCounter<300) {
    hairX = random(200, 390);
    hairY = random (100, 130);


    line(hairX+20, hairY+100, hairX + random(-10, 30), hairY + random (0, 50));
    hairCounter = hairCounter + 1;
  }

  //torso
  fill(#5375EA);
  ellipse(torsoX, torsoY, 320, 400);
  //drumsticks
  image(img, 0, 0);

  //face
  fill(#F7D8C5);
  ellipse(faceX, faceY, 260, 300);
  
  leftEyeX = faceX - 60;
  
  rightEyeX = faceX + 60;
  rightEyeY = faceY - 40;
  
  
  leftEyeY = faceX -40;

 

  //eyes
  fill(255);
  ellipse(leftEyeX, leftEyeY, 45, 45);
  ellipse(rightEyeX, rightEyeY, 45, 45);

  fill(255);
  if (expression == 0) {
    ellipse(faceX, faceY+70, 70, 30);
  } else {
    fill(0);
    ellipse(faceX, faceY+70, 70, 5);
  }


  //blinking
  if (blink == true) {


    fill(#F7D8C5);

    ellipse(leftEyeX, leftEyeY, 45, 45);
    ellipse(rightEyeX, rightEyeY, 45, 45);
  } else
  {
//pupils
    fill(0);

    ellipse(leftEyeX + (mouseX-width/2)/20, leftEyeY + (mouseY-height/2)/40, 18, 18);
    ellipse(rightEyeX + (mouseX-width/2)/20, rightEyeY + (mouseY-height/2)/40, 18, 18);
  }
}

void mouseClicked() {
  blink=!blink;
}
//expression change
void keyPressed() {
  if (key == ' ') {
    if (expression == 0) {
      expression =1;
    } else {
      expression = 0;
    }
  }
}
