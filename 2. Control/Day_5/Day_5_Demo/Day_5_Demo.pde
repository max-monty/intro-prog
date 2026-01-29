// Day 5 Demo - Nested If Statements
// Target practice game with nested zone detection

// --- CUSTOM VARIABLES ---
int score = 0;
int shots = 0;
String lastHit = "Click to shoot!";
int targetX = 300;
int targetY = 200;

void setup() {
  size(600, 400);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(50, 80, 50);  // Dark green background

  // --- DRAW TARGET ---
  drawTarget();

  // --- DISPLAY INFO ---
  displayInfo();
}

void mousePressed() {
  shots = shots + 1;

  // --- NESTED ZONE DETECTION ---
  // First check if within outer ring (150 pixel diameter)
  float distance = dist(mouseX, mouseY, targetX, targetY);

  if (distance <= 75) {
    // Inside outer ring - now check inner rings
    if (distance <= 50) {
      // Inside middle ring - check for bullseye
      if (distance <= 25) {
        // BULLSEYE!
        score = score + 100;
        lastHit = "BULLSEYE! +100";
      } else {
        // Inner ring but not bullseye
        score = score + 50;
        lastHit = "Inner ring! +50";
      }
    } else {
      // Middle ring
      score = score + 25;
      lastHit = "Middle ring! +25";
    }
  } else {
    // Outside all rings - check if close
    if (distance <= 100) {
      // Close miss
      lastHit = "Close miss!";
    } else {
      // Far miss
      lastHit = "Missed!";
    }
  }

  // --- MOVE TARGET RANDOMLY ---
  targetX = int(random(100, width - 100));
  targetY = int(random(100, height - 100));
}

void keyPressed() {
  // --- RESET GAME ---
  if (key == 'r' || key == 'R') {
    score = 0;
    shots = 0;
    lastHit = "Click to shoot!";
  }
}

// Function to draw the target with multiple rings
void drawTarget() {
  noStroke();

  // Outer ring (75 pixel radius)
  fill(255, 255, 255);
  circle(targetX, targetY, 150);

  // Middle ring (50 pixel radius)
  fill(255, 100, 100);
  circle(targetX, targetY, 100);

  // Inner ring (25 pixel radius)
  fill(255, 255, 255);
  circle(targetX, targetY, 50);

  // Bullseye (center)
  fill(255, 0, 0);
  circle(targetX, targetY, 25);

  // Point labels
  fill(0);
  textSize(10);
  text("25", targetX + 60, targetY);
  text("50", targetX + 35, targetY);
  text("100", targetX, targetY);
}

// Function to display score and instructions
void displayInfo() {
  // Score box
  fill(0, 0, 0, 150);
  noStroke();
  rect(0, 0, width, 60);

  fill(255);
  textSize(20);
  text("Score: " + score, 80, 25);
  text("Shots: " + shots, 200, 25);

  // Accuracy
  if (shots > 0) {
    float accuracy = (float)score / (shots * 100) * 100;
    text("Avg: " + nf(accuracy, 0, 1) + " pts", 340, 25);
  }

  // Last hit message
  fill(255, 255, 0);
  textSize(18);
  text(lastHit, width/2, 50);

  // Instructions
  fill(200);
  textSize(12);
  text("Click to shoot | R to reset", width/2, height - 15);
}
