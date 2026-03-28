// Day 2 Demo - Storing mouse history in arrays

float[] trailX = new float[30];
float[] trailY = new float[30];

void setup() {
  size(600, 400);
}

void draw() {
  background(30);

  // Shift old positions down
  for (int i = trailX.length - 1; i > 0; i--) {
    trailX[i] = trailX[i - 1];
    trailY[i] = trailY[i - 1];
  }

  // Store current mouse at front
  trailX[0] = mouseX;
  trailY[0] = mouseY;

  // Draw each stored position
  for (int i = 0; i < trailX.length; i++) {
    float alpha = map(i, 0, trailX.length, 255, 0);
    fill(255, alpha);
    noStroke();
    circle(trailX[i], trailY[i], 15);
  }
}
