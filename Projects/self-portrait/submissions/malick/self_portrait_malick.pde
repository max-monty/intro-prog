int circleCount = 0;
PImage oteLogo, nikeLogo, basketball;
float ballY = 500;
float ballSpeed = 0;
int dribbleCount = 0;

void setup() {
  size(900, 900);
  oteLogo = loadImage("Unknown-removebg-preview.png");
  nikeLogo = loadImage("nike-4-logo-black-and-white.png");
  basketball = loadImage("istockphoto-667191400-612x612-removebg-preview.png");
  imageMode(CENTER);
}

void draw() {

  background(205, 205, 255);



  // line
  stroke(180, 180, 230);
  strokeWeight(2);
  for (int i = -width; i < width + height; i += 40) {
    line(i, 0, i + height, height); // Draws diagonal lines
  }
  noStroke();

  fill(0, 70, 120); // Matching the jersey color
  textSize(32);
  textAlign(LEFT);
  text("Ankle Snatched: " + dribbleCount, 30, 50);

  if (ballY == 650 || ballY == 645) {
    ballSpeed = -12;
    dribbleCount++;       // INCREMENT COUNTER when ball hits the floor
  }



  //  Click to drop the ball
  if (mousePressed) {
    ballSpeed = 10;
  }

  // Move the ball by its speed
  ballY = ballY + ballSpeed;



  if (ballY >= 550) {
    ballSpeed = -12;
    frameRate(100000);//
  }

  if (ballY <= 500 && ballSpeed < 0) {
    ballY = 500;           // Lock at start height
    ballSpeed = 0;
    frameRate(100000);
  }

  // --- CHARACTER DRAWING ---
  fill(0, 70, 120);
  rect(300, 350, 300, 400);
  fill(0);
  rect(325, 100, 250, 200, 40);
  fill(100, 60, 20);
  circle(width/2, 250, 275);
  circle(400, 225, 45);
  circle(490, 225, 45);
  fill(255);
  circle(490, 225, 35);
  circle(400, 225, 35);
  fill(40, 30, 0);
  circle(490, 225, 20);
  circle(400, 225, 20);
  fill(0);
  rect(340, 110, 220, 50);
  rect(380, 185, 40, 7);
  rect(470, 185, 40, 7);
  rect(415, 285, 60, 7);
  fill(0, 200, 100);
  textSize(20);
  text("Ankle Snatchers Elite", 360, 460);
  textSize(100);
  text("4", 420, 575);
  fill(0);
  rect(330, 120, 40, 55);
  rect(530, 120, 40, 55);

  image(oteLogo, 550, 410, 40.5, 37);
  image(nikeLogo, 350, 410, 40.5, 37);

  // Draw the basketball using the ballY variable
  image(basketball, 650, ballY, 300, 300);

  fill(100, 60, 20);
  rect(615, ballY-130, 75, 67);
}
