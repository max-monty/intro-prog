// Day 4 Demo: Rising Bubbles
// Concepts: ArrayList, .add(), .get(), .set(), .size(), .remove(), backward loop
// Bubbles rise from the bottom. Hover over one to pop it.

ArrayList<Float> bx = new ArrayList<Float>();
ArrayList<Float> by = new ArrayList<Float>();
ArrayList<Float> bSize = new ArrayList<Float>();

void setup() {
  size(600, 400);
}

void draw() {
  background(20, 60, 100);

  // Spawn a new bubble every few frames
  if (frameCount % 10 == 0) {
    bx.add(random(50, width - 50));
    by.add(float(height));
    bSize.add(random(15, 40));
  }

  // Update and draw (backward loop for safe removal)
  for (int i = bx.size() - 1; i >= 0; i--) {
    // Rise
    by.set(i, by.get(i) - random(1, 3));

    // Draw
    noFill();
    stroke(180, 220, 255, 150);
    circle(bx.get(i), by.get(i), bSize.get(i));

    // Pop if mouse is over it
    float d = dist(mouseX, mouseY, bx.get(i), by.get(i));
    if (d < bSize.get(i) / 2) {
      bx.remove(i);
      by.remove(i);
      bSize.remove(i);
    }
    // Also remove if off the top
    else if (by.get(i) < -bSize.get(i)) {
      bx.remove(i);
      by.remove(i);
      bSize.remove(i);
    }
  }

  fill(180);
  textSize(14);
  text("Bubbles: " + bx.size(), 10, 25);
}
