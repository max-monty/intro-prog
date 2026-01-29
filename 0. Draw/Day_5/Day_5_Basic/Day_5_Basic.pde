// Day 5 Basic - Variables and Animation
// Topics: variables, setup(), draw(), width, height

// --- VARIABLES ---
float circleX;
float circleY;
float speed = 3;

void setup() {
  size(400, 300);
  
  // Initialize position
  circleX = 0;
  circleY = height / 2;
}

void draw() {
  background(200, 230, 255);
  
  // --- DRAW CIRCLE ---
  fill(255, 100, 100);
  noStroke();
  ellipse(circleX, circleY, 50, 50);
  
  // --- MOVE CIRCLE ---
  circleX = circleX + speed;
}
