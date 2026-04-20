int greeting = 0;

int leftEyeX = 165;
int leftEyeY = 240;

int rightEyeX = 235;
int rightEyeY = 240;
int y = 380;


void setup() {
  size(400, 450);
  background (random(255), random(255), random(255));
}

void draw() {
  leftEyeX = constrain(mouseX, 150, 180);
  leftEyeY = constrain(mouseY, 230, 250);
  rightEyeX = constrain(mouseX, 220, 250);
  rightEyeY = constrain(mouseY, 230, 250);

  drawFace();
  // Speech bubble
  fill(255);
  stroke(0);
  ellipse(200, 80, 220, 90);
  triangle(170, 120, 190, 120, 180, 145);

  // greeting text
  fill(0);
  textSize(24);
  textAlign(CENTER);

  if (greeting == 0) {
    text("Hello", 200, 85);
  }

  if (greeting == 1) {
    text("Hola", 200, 85);
  }

  if (greeting == 2) {
    text("Bonjour", 200, 85);
  }

  if (greeting == 3) {
    text("Ciao", 200, 85);
  }
}

void keyPressed() {
  if (key == ' ') {
    background(random(255), random(255), random(255));
  } else {
    background(200, 220, 255);
  }
}

void drawFace() {
  //Hair
  fill(0);
  ellipse(200, 290, 220, 335);


  // Neck
  fill(139, 69, 19);
  rect(170, 320, 60, 80);

  // Face
  fill(139, 69, 19);
  ellipse(200, 250, 180, 220);


  //Bangs
  fill(0);
  arc(200, 190, 140, 120, PI, TWO_PI);

  // Eyebrows
  fill(0);
  ellipse(165, 210, 45, 12);
  ellipse(235, 210, 45, 12);

  // Ears
  fill(139, 69, 19);
  noStroke();
  ellipse(110, 250, 40, 60);
  ellipse(290, 250, 40, 60);

  //Earrings
  fill(255);
  noStroke();
  circle(108, 274, 12);
  circle(293, 274, 12);

  // Eyes (white part)
  fill(255);
  ellipse(165, 240, 40, 25);
  ellipse(235, 240, 40, 25);

  // Pupils
  fill(0);
  circle(leftEyeX, leftEyeY, 15);
  circle(rightEyeX, rightEyeY, 15);

  // Nose
  fill(120, 60, 20);
  triangle(200, 250, 190, 280, 210, 280);

  // Mouth
  fill(150, 0, 0);
  if (greeting == 0) {
    arc(200, 300, 60, 40, 0, PI); // smile
  } else if (greeting == 1) {
    line(170, 300, 230, 300); // neutral
  } else if (greeting == 2) {
    arc(200, 310, 60, 40, PI, TWO_PI); // sad
  } else {
    ellipse(200, 305, 20, 10); // surprised
  }

  // Left arm
  fill(255, 100, 150);
  rect(120, 380, 25, 120);

  // Pink shirt
  fill(255, 125, 174);
  rect(130, 380, 140, 150);
  fill (255, 125, 174);
  triangle(245, 450, 244, 420, 250, 450);
  triangle(145, 450, 150, 420, 150, 450);

  // Shirt stripes
  int y = 380;
  for (int stripe = 0; stripe < 5; stripe++) {
    line(130, y, 270, y);
    y = y + 20;
  }


  for (int stripe = 0; stripe < 5; stripe++) {
    line(130, y, 270, y);
    y = y + 20;
  }
  //Bottom neck
  fill (139, 69, 19);
  arc(200, 380, 60, 50, 0, PI);
}

void mousePressed() {
  greeting++;
  if (greeting > 3) {
    greeting=0;
  }
}
