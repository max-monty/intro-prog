// Day 7 Basic - Functions with Return Values
// Topics: return type, wrapping/looping

float circleX;
float speed = 3;

void setup() {
  size(400, 300);
  circleX = 0;
}

void draw() {
  background(200, 230, 255);
  
  // --- DRAW CIRCLE ---
  fill(255, 100, 100);
  noStroke();
  ellipse(circleX, height / 2, 50, 50);
  
  // --- UPDATE POSITION USING FUNCTION ---
  circleX = updatePosition(circleX, speed);
}

// --- FUNCTION WITH RETURN VALUE ---
float updatePosition(float x, float spd) {
  x = x + spd;
  
  // Wrap around when off screen
  if (x > width + 25) {
    x = -25;
  }
  
  return x;
}
