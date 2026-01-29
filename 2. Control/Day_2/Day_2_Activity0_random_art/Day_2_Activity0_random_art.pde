// Day 2 Activity - Random Art Generator
// Create abstract art using randomness

// ============================================
// INSTRUCTIONS:
// 1. Click anywhere to add a random shape
// 2. Press SPACE to fill the screen with shapes
// 3. Press C to clear and start over
// 4. Modify the code to create your own style!
// ============================================

void setup() {
  size(600, 500);
  background(20);
}

void draw() {
  // Art stays on screen - no background() call in draw
}

void mousePressed() {
  // --- DRAW ONE RANDOM SHAPE AT MOUSE POSITION ---
  drawRandomShape(mouseX, mouseY);
}

void keyPressed() {
  // --- CLEAR CANVAS ---
  if (key == 'c' || key == 'C') {
    background(20);
  }

  // --- FILL WITH RANDOM SHAPES ---
  if (key == ' ') {
    for (int i = 0; i < 50; i++) {
      float x = random(width);
      float y = random(height);
      drawRandomShape(x, y);
    }
  }
}

// Function to draw a random shape at position
void drawRandomShape(float x, float y) {
  // --- RANDOM COLOR ---
  float r = random(256);
  float g = random(256);
  float b = random(256);
  float alpha = random(100, 200);  // Semi-transparent

  fill(r, g, b, alpha);
  noStroke();

  // --- RANDOM SIZE ---
  float size = random(20, 100);

  // --- RANDOM SHAPE TYPE ---
  int shapeType = int(random(4));  // 0, 1, 2, or 3

  if (shapeType == 0) {
    // Circle
    circle(x, y, size);
  }
  if (shapeType == 1) {
    // Rectangle
    rect(x - size/2, y - size/2, size, size * random(0.5, 1.5));
  }
  if (shapeType == 2) {
    // Triangle
    triangle(
      x, y - size/2,
      x - size/2, y + size/2,
      x + size/2, y + size/2
    );
  }
  if (shapeType == 3) {
    // Ellipse
    ellipse(x, y, size, size * random(0.3, 0.7));
  }
}

// ============================================
// CHALLENGES:
// 1. Add more shape types (lines, stars, etc.)
// 2. Use random() with a range to limit colors
//    (e.g., only warm colors: r = random(200, 256))
// 3. Make shapes that only appear in certain areas
// 4. Add a "gradient" mode that changes colors based on position
// 5. Create a "symmetry" mode that mirrors shapes
// ============================================
