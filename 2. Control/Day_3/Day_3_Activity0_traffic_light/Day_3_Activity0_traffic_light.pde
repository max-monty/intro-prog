// Day 3 Activity - Traffic Light
// Create an interactive traffic light using booleans and if statements

// ============================================
// INSTRUCTIONS:
// 1. Complete the TODO sections below
// 2. Use boolean variables to track which light is on
// 3. Use if statements to draw the correct colors
// 4. Use keyPressed() to change lights
// ============================================

// --- BOOLEAN VARIABLES ---
// TODO: Declare three boolean variables for each light
// Only one should be true at a time
boolean redOn = true;
boolean yellowOn = false;
boolean greenOn = false;

void setup() {
  size(200, 400);
}

void draw() {
  background(50);

  // --- DRAW TRAFFIC LIGHT BOX ---
  fill(30);
  stroke(100);
  strokeWeight(3);
  rect(40, 50, 120, 300, 20);

  // --- DRAW RED LIGHT ---
  // TODO: If redOn is true, fill with bright red (255, 0, 0)
  //       Otherwise, fill with dark red (100, 0, 0)
  if (redOn) {
    fill(255, 0, 0);
  } else {
    fill(100, 0, 0);
  }
  noStroke();
  circle(100, 120, 70);

  // --- DRAW YELLOW LIGHT ---
  // TODO: Use an if statement to check yellowOn
  //       Bright yellow: (255, 255, 0)
  //       Dark yellow: (100, 100, 0)
  if (yellowOn) {
    fill(255, 255, 0);
  } else {
    fill(100, 100, 0);
  }
  circle(100, 200, 70);

  // --- DRAW GREEN LIGHT ---
  // TODO: Use an if statement to check greenOn
  //       Bright green: (0, 255, 0)
  //       Dark green: (0, 100, 0)
  if (greenOn) {
    fill(0, 255, 0);
  } else {
    fill(0, 100, 0);
  }
  circle(100, 280, 70);

  // --- INSTRUCTIONS ---
  fill(255);
  textAlign(CENTER);
  textSize(12);
  text("R: Red", 100, 370);
  text("Y: Yellow | G: Green", 100, 385);
}

void keyPressed() {
  // --- CHANGE LIGHTS BASED ON KEY PRESS ---
  // TODO: When 'r' or 'R' is pressed, turn on red (and turn off others)
  if (key == 'r' || key == 'R') {
    redOn = true;
    yellowOn = false;
    greenOn = false;
  }

  // TODO: When 'y' or 'Y' is pressed, turn on yellow
  if (key == 'y' || key == 'Y') {
    redOn = false;
    yellowOn = true;
    greenOn = false;
  }

  // TODO: When 'g' or 'G' is pressed, turn on green
  if (key == 'g' || key == 'G') {
    redOn = false;
    yellowOn = false;
    greenOn = true;
  }
}

// ============================================
// CHALLENGES:
// 1. Add a "cycle" feature: press SPACE to go to next light
// 2. Add a "blink" mode for yellow using frameCount
// 3. Add a pedestrian signal (walk/don't walk)
// 4. Create a "night mode" where only yellow blinks
// ============================================
