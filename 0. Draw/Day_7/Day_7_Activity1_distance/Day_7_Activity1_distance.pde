// Activity 1: Distance-Controlled Drawing
// Learn: Non-void functions that RETURN a value
// The distance() function returns a number we can use!

float targetX, targetY;

void setup() {
  size(400, 400);
  targetX = width / 2;
  targetY = height / 2;
}

void draw() {
  background(30, 30, 50);
  
  // Call our function - it RETURNS a value we store in a variable
  float dist = distance(mouseX, mouseY, targetX, targetY);
  
  // Use the returned value to control visuals
  float circleSize = dist;                    // Distance controls size
  float transparency = 300 - dist;            // Closer = more opaque
  
  // Draw the target (center circle)
  fill(255, 100, 100);
  noStroke();
  ellipse(targetX, targetY, 30, 30);
  
  // Draw the mouse-controlled circle
  // The returned distance value controls BOTH size and transparency
  fill(100, 200, 255, transparency);
  stroke(255);
  strokeWeight(2);
  ellipse(mouseX, mouseY, circleSize, circleSize);
  
  // Display the returned value on screen
  fill(255);
  textSize(16);
  text("distance() returned: " + int(dist), 20, 30);
  text("Using it for size: " + int(circleSize), 20, 50);
  text("Using it for transparency: " + int(transparency), 20, 70);
}

// NON-VOID FUNCTION: Returns a float value
// This calculates the distance between two points
float distance(float x1, float y1, float x2, float y2) {
  float dx = x2 - x1;
  float dy = y2 - y1;
  float result = sqrt(dx * dx + dy * dy);
  return result;  // Send the answer back!
}
