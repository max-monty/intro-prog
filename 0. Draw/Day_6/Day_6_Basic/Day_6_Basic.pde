// Day 6 Basic - Custom Void Functions
// Topics: defining functions, parameters

float circle1X = 100;
float circle2X = 300;
float speed = 2;

void setup() {
  size(400, 300);
}

void draw() {
  background(200, 230, 255);
  
  // --- DRAW CIRCLES USING FUNCTION ---
  drawCircle(circle1X, 100, 255, 100, 100);  // Red circle
  drawCircle(circle2X, 200, 100, 100, 255);  // Blue circle
  
  // --- MOVE CIRCLES ---
  circle1X = circle1X + speed;
  circle2X = circle2X - speed;
}

// --- CUSTOM FUNCTION ---
void drawCircle(float x, float y, float r, float g, float b) {
  fill(r, g, b);
  noStroke();
  ellipse(x, y, 50, 50);
}
