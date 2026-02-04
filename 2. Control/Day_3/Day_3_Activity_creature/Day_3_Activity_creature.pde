// ============================================
// DAY 3 ACTIVITY: Digital Creature
// ============================================
// Create an interactive creature using booleans!
// See the README for level descriptions.
// ============================================

// ============================================
// LEVEL 1: Mood Toggle
// ============================================
// TODO: Create a boolean variable called isHappy


// Creature position (use these for drawing)
float creatureX = 300;
float creatureY = 250;

void setup() {
  size(600, 500);
}

void draw() {
  // ============================================
  // TODO: Change background color based on isHappy
  // Happy = warm color, Sad = cool color
  // ============================================
  background(200);

  // ============================================
  // TODO: Draw the creature's body (a circle)
  // ============================================


  // ============================================
  // TODO: Draw eyes that change based on mood
  // Happy = normal eyes, Sad = droopy eyes
  //
  // Hints:
  // - Use if (isHappy) { ... } else { ... }
  // - Eyes are circles at creatureX +/- 40, creatureY - 20
  // ============================================


  // ============================================
  // TODO: Draw mouth that changes based on mood
  // Happy = smile (arc curving up)
  // Sad = frown (arc curving down)
  //
  // Hints:
  // - arc(x, y, width, height, startAngle, endAngle)
  // - Smile: arc(x, y, 80, 50, 0, PI)
  // - Frown: arc(x, y, 80, 50, PI, TWO_PI)
  // ============================================


  // ============================================
  // LEVEL 2: Multi-State Creature
  // ============================================
  // TODO: Add more booleans: isAwake, isHungry, isScared
  // TODO: Each state changes the creature's appearance
  // ============================================


  // ============================================
  // LEVEL 3: Environmental Response
  // ============================================
  // TODO: Make creature look toward mouse position
  // TODO: Get scared if mouse is too close
  //
  // Hints:
  // - dist(mouseX, mouseY, creatureX, creatureY)
  // ============================================


  // ============================================
  // LEVEL 4: Living Creature
  // ============================================
  // TODO: Add breathing animation with sin()
  // TODO: Eyes follow the mouse
  // TODO: Needs that change over time
  // ============================================

}

void keyPressed() {
  // ============================================
  // TODO: Toggle isHappy when SPACE is pressed
  //
  // Hints:
  // - if (key == ' ') { ... }
  // - isHappy = !isHappy;  // flips true to false
  // ============================================


  // TODO Level 2: Add more key controls
  // 'A' for awake, 'H' for hungry, 'S' for scared
}

void mousePressed() {
  // Use for Level 4: feeding or petting the creature
}
