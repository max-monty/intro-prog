// Day 4 Activity - Grade Checker
// Display letter grades based on numeric score using if-else if-else

// ============================================
// INSTRUCTIONS:
// 1. Use UP/DOWN arrows to change the score
// 2. Complete the if-else if-else chain to determine the letter grade
// 3. Add appropriate colors for each grade
// ============================================

// --- VARIABLES ---
int score = 75;
String letterGrade = "";
String message = "";

void setup() {
  size(400, 300);
  textAlign(CENTER, CENTER);
}

void draw() {
  // --- DETERMINE LETTER GRADE ---
  // TODO: Complete the if-else if-else chain
  // A: 90-100, B: 80-89, C: 70-79, D: 60-69, F: below 60

  if (score >= 90) {
    letterGrade = "A";
    message = "Excellent work!";
    background(100, 200, 100);  // Green
  } else if (score >= 80) {
    letterGrade = "B";
    message = "Good job!";
    background(150, 200, 100);  // Yellow-green
  } else if (score >= 70) {
    letterGrade = "C";
    message = "Satisfactory";
    background(255, 255, 100);  // Yellow
  } else if (score >= 60) {
    letterGrade = "D";
    message = "Needs improvement";
    background(255, 200, 100);  // Orange
  } else {
    letterGrade = "F";
    message = "See me after class";
    background(255, 100, 100);  // Red
  }

  // --- DISPLAY SCORE ---
  fill(0);
  textSize(20);
  text("Score: " + score, width/2, 60);

  // --- DISPLAY LETTER GRADE ---
  textSize(72);
  text(letterGrade, width/2, 140);

  // --- DISPLAY MESSAGE ---
  textSize(18);
  text(message, width/2, 210);

  // --- INSTRUCTIONS ---
  fill(50);
  textSize(14);
  text("UP/DOWN arrows to change score", width/2, 270);
}

void keyPressed() {
  // --- CHANGE SCORE WITH ARROW KEYS ---
  if (keyCode == UP) {
    score = score + 5;
    // Don't go above 100
    if (score > 100) {
      score = 100;
    }
  }

  if (keyCode == DOWN) {
    score = score - 5;
    // Don't go below 0
    if (score < 0) {
      score = 0;
    }
  }

  // --- RESET TO 75 ---
  if (key == 'r' || key == 'R') {
    score = 75;
  }
}

// ============================================
// CHALLENGES:
// 1. Add + and - grades (A+, A, A-, B+, etc.)
// 2. Add a "curve" feature that adds 5 points
// 3. Display a progress bar showing the score visually
// 4. Add sound effects or animations for different grades
// ============================================
