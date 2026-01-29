// Simple Input Demo
// Demonstrates: mousePressed, mouseDragged, keyPressed, key vs keyCode

void setup() {
  size(400, 400);
  background(255);
  textSize(14);
}

void draw() {
  // Show instructions at top
  fill(255);
  noStroke();
  rect(0, 0, width, 60);
  
  fill(0);
  text("Click to draw red circles", 10, 20);
  text("Drag to draw blue lines", 10, 35);
  text("Press any key to see key vs keyCode", 10, 50);
}

// Called once when mouse button is pressed
void mousePressed() {
  fill(255, 0, 0);
  noStroke();
  circle(mouseX, mouseY, 30);
}

// Called repeatedly while mouse is dragged
void mouseDragged() {
  stroke(0, 0, 255);
  strokeWeight(3);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

// Called once when a key is pressed
void keyPressed() {
  // Clear a spot for text
  fill(255);
  noStroke();
  rect(0, 350, width, 50);
  
  fill(0);
  // 'key' stores the actual character
  text("key: " + key, 10, 370);
  
  // 'keyCode' stores the numeric code (useful for arrows, shift, etc)
  text("keyCode: " + keyCode, 10, 390);
  
  // Example: keyCode is useful for special keys
  if (keyCode == UP) {
    background(random(255), random(255), random(255));
  }
}
