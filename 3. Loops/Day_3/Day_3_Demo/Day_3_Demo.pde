// Day 3 Demo - Nested Loops
// Interactive dot grid that responds to mouse proximity

// --- CUSTOM VARIABLES ---
int spacing = 40;
int dotSize = 8;

void setup() {
  size(600, 400);
}

void draw() {
  background(30);

  // --- DOT GRID ---
  for (int y = spacing / 2; y < height; y = y + spacing) {
    for (int x = spacing / 2; x < width; x = x + spacing) {

      // Distance from this dot to the mouse
      float d = dist(x, y, mouseX, mouseY);

      // Size grows when mouse is near
      float size = map(d, 0, 200, dotSize * 3, dotSize);
      size = constrain(size, dotSize, dotSize * 3);

      // Color shifts when mouse is near
      float r = map(d, 0, 200, 255, 50);
      float g = map(d, 0, 200, 100, 50);
      float b = map(d, 0, 200, 50, 150);

      fill(r, g, b);
      noStroke();
      circle(x, y, size);
    }
  }

  // --- INFO ---
  fill(200);
  textSize(12);
  text("Move mouse over the grid", 10, height - 10);
}
