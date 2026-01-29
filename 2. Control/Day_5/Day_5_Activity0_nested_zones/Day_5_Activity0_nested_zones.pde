// Day 5 Activity - Nested Zones
// Detect mouse position in nested rectangular zones

// ============================================
// INSTRUCTIONS:
// 1. The screen has multiple nested zones
// 2. Use nested if statements OR logical operators
// 3. Display different colors and messages for each zone
// ============================================

// --- ZONE BOUNDARIES ---
// Outer zone: full screen
// Middle zone: 100 pixels from edges
// Inner zone: 200 pixels from edges
// Center zone: 250 pixels from edges

String currentZone = "";

void setup() {
  size(600, 500);
  textAlign(CENTER, CENTER);
}

void draw() {
  // --- DETERMINE ZONE USING NESTED IF STATEMENTS ---
  // Check from outside to inside

  // Check if in center zone (most restrictive)
  if (mouseX > 250 && mouseX < width - 250 &&
      mouseY > 200 && mouseY < height - 200) {
    currentZone = "CENTER";
    background(255, 100, 100);  // Red
  }
  // Check if in inner zone
  else if (mouseX > 200 && mouseX < width - 200 &&
           mouseY > 150 && mouseY < height - 150) {
    currentZone = "INNER";
    background(255, 200, 100);  // Orange
  }
  // Check if in middle zone
  else if (mouseX > 100 && mouseX < width - 100 &&
           mouseY > 100 && mouseY < height - 100) {
    currentZone = "MIDDLE";
    background(255, 255, 100);  // Yellow
  }
  // Otherwise, in outer zone
  else {
    currentZone = "OUTER";
    background(100, 200, 255);  // Blue
  }

  // --- DRAW ZONE BOUNDARIES ---
  noFill();
  stroke(0);
  strokeWeight(2);

  // Outer boundary (screen edge)
  rect(0, 0, width, height);

  // Middle boundary
  rect(100, 100, width - 200, height - 200);

  // Inner boundary
  rect(200, 150, width - 400, height - 300);

  // Center boundary
  rect(250, 200, width - 500, height - 400);

  // --- DISPLAY ZONE NAME ---
  fill(0);
  textSize(32);
  text(currentZone + " ZONE", width/2, height/2 - 50);

  // --- DISPLAY COORDINATES ---
  textSize(16);
  text("Mouse: (" + mouseX + ", " + mouseY + ")", width/2, height/2 + 20);

  // --- DISPLAY ZONE-SPECIFIC MESSAGE ---
  textSize(14);
  if (currentZone == "CENTER") {
    text("You found the center!", width/2, height/2 + 50);
  } else if (currentZone == "INNER") {
    text("Getting warmer...", width/2, height/2 + 50);
  } else if (currentZone == "MIDDLE") {
    text("Keep going!", width/2, height/2 + 50);
  } else {
    text("Move toward the center", width/2, height/2 + 50);
  }
}

// ============================================
// CHALLENGES:
// 1. Add more zones with different colors
// 2. Make the zones circular instead of rectangular
// 3. Add a score that increases while in the center
// 4. Add "danger zones" in the corners
// 5. Create a maze using nested conditions
// ============================================
