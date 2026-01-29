// Day 8 Basic - Interactivity
// Topics: mousePressed(), keyPressed(), mouseX, mouseY

float circleX;
float circleY;

void setup() {
  size(400, 300);
  circleX = width / 2;
  circleY = height / 2;
}

void draw() {
  background(200, 230, 255);
  
  // --- DRAW CIRCLE ---
  fill(255, 100, 100);
  noStroke();
  ellipse(circleX, circleY, 50, 50);
  
  // --- SHOW INSTRUCTIONS ---
  fill(0);
  textSize(12);
  text("Click to move circle", 10, 20);
  text("Press any key to reset", 10, 35);
}

// --- MOUSE CLICKED ---
void mousePressed() {
  circleX = mouseX;
  circleY = mouseY;
}

// --- KEY PRESSED ---
void keyPressed() {
  circleX = width / 2;
  circleY = height / 2;
}
