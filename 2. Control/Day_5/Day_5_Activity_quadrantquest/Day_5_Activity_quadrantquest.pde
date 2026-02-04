// ============================================
// DAY 5 ACTIVITY: Quadrant Quest
// ============================================
// Create an interactive world using nested if statements!
// See the README for level descriptions.
// ============================================

// ============================================
// LEVEL 1: Four Kingdoms
// ============================================
// TODO: Create a String variable for current kingdom name


void setup() {
  size(600, 500);
}

void draw() {
  // ============================================
  // TODO: Use NESTED if statements to detect quadrant
  //
  // Structure:
  // if (mouseY < height/2) {
  //   // Top half
  //   if (mouseX < width/2) {
  //     // Top-Left: Ice Kingdom
  //   } else {
  //     // Top-Right: Fire Kingdom
  //   }
  // } else {
  //   // Bottom half
  //   if (mouseX < width/2) {
  //     // Bottom-Left: Forest Kingdom
  //   } else {
  //     // Bottom-Right: Ocean Kingdom
  //   }
  // }
  //
  // Each kingdom should:
  // - Set its own background color
  // - Set the kingdom name
  // ============================================


  // ============================================
  // TODO: Draw visual elements for each kingdom
  //
  // Ideas:
  // - Ice: snowflakes (white circles)
  // - Fire: embers (orange/red circles rising)
  // - Forest: leaves (green shapes)
  // - Ocean: bubbles (blue circles)
  // ============================================


  // ============================================
  // TODO: Display the kingdom name
  // ============================================


  // ============================================
  // LEVEL 2: Kingdom Interactions
  // ============================================
  // TODO: Add clickable objects in each kingdom center
  // TODO: Use nested conditions in mousePressed():
  //       First check which kingdom, then if click is near object
  //
  // Hints:
  // - Each quadrant center: (width/4, height/4), etc.
  // - dist(mouseX, mouseY, objectX, objectY) < radius
  // ============================================


  // ============================================
  // LEVEL 3: The Border Zones
  // ============================================
  // TODO: Detect when mouse is near the center (Nexus zone)
  // TODO: Detect border zones between kingdoms
  //
  // Hints:
  // - Center zone: mouseX > width/2 - 50 && mouseX < width/2 + 50
  //                && mouseY > height/2 - 50 && mouseY < height/2 + 50
  // - Border detection requires checking multiple conditions
  // ============================================


  // ============================================
  // LEVEL 4: Quest System
  // ============================================
  // TODO: Track which kingdoms have been visited
  // TODO: Add a player character with arrow key movement
  // TODO: Add collectibles and score
  // ============================================

}

void mousePressed() {
  // Use for Level 2: clicking objects in kingdoms
}

void keyPressed() {
  // Use for Level 4: player movement with arrow keys
}
