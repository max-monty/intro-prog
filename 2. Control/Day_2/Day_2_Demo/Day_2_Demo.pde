// Day 2 Demo - Randomness
// Confetti generator with random colors, positions, and sizes

// --- CUSTOM VARIABLES ---
int confettiCount = 0;

void setup() {
  size(600, 400);
  background(30);  // Dark background
  textAlign(CENTER, CENTER);
}

void draw() {
  // Semi-transparent background for trail effect
  fill(30, 30);
  noStroke();
  rect(0, 0, width, height);

  // --- DISPLAY INFO ---
  displayInfo();
}

void mousePressed() {
  // --- SPAWN CONFETTI BURST ---
  // Create multiple confetti pieces at mouse location
  for (int i = 0; i < 20; i++) {
    drawConfetti();
  }
  confettiCount = confettiCount + 20;
}

void keyPressed() {
  // --- CLEAR SCREEN ---
  if (key == 'c' || key == 'C') {
    background(30);
    confettiCount = 0;
  }

  // --- FILL SCREEN WITH CONFETTI ---
  if (key == ' ') {
    for (int i = 0; i < 100; i++) {
      drawRandomConfetti();
    }
    confettiCount = confettiCount + 100;
  }
}

// Function to draw confetti near mouse position
void drawConfetti() {
  // --- RANDOM OFFSET FROM MOUSE ---
  float offsetX = random(-50, 50);
  float offsetY = random(-50, 50);
  float x = mouseX + offsetX;
  float y = mouseY + offsetY;

  // --- RANDOM COLOR ---
  float r = random(100, 256);  // Bright colors only
  float g = random(100, 256);
  float b = random(100, 256);

  // --- RANDOM SIZE ---
  float size = random(5, 15);

  // --- DRAW ---
  noStroke();
  fill(r, g, b);
  circle(x, y, size);
}

// Function to draw confetti anywhere on screen
void drawRandomConfetti() {
  // --- RANDOM POSITION ---
  float x = random(width);
  float y = random(height);

  // --- RANDOM COLOR ---
  float r = random(100, 256);
  float g = random(100, 256);
  float b = random(100, 256);

  // --- RANDOM SIZE ---
  float size = random(5, 20);

  // --- RANDOM SHAPE ---
  int shapeType = int(random(3));  // 0, 1, or 2

  noStroke();
  fill(r, g, b);

  if (shapeType == 0) {
    circle(x, y, size);
  }
  if (shapeType == 1) {
    rect(x, y, size, size);
  }
  if (shapeType == 2) {
    triangle(x, y - size/2, x - size/2, y + size/2, x + size/2, y + size/2);
  }
}

// Function to display instructions and count
void displayInfo() {
  fill(255);
  textSize(14);
  text("Click to spawn confetti | SPACE for random burst | C to clear", width/2, 20);
  text("Confetti count: " + confettiCount, width/2, height - 20);
}
