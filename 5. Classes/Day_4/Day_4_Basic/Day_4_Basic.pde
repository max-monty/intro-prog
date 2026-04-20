// Day 4 Basic Demo - Arrays of Objects II
// Introduces: an ArrayList of objects that REACT to the mouse.
//
// Each Target in the list checks for itself whether the mouse is hovering
// over it and whether it has been clicked. The main sketch just loops.

ArrayList<Target> targets = new ArrayList<Target>();

void setup() {
  size(600, 400);

  // --- BUILD A ROW OF TARGETS ---
  for (int i = 0; i < 5; i++) {
    float x = map(i, 0, 4, 100, width - 100);
    targets.add(new Target(x, height / 2));
  }
}

void draw() {
  background(25);

  // --- LOOP AND LET EACH TARGET DRAW ITSELF ---
  for (int i = 0; i < targets.size(); i++) {
    targets.get(i).show();
  }
}

// --- CLICK FLIPS A TARGET'S "hit" FLAG ---
void mousePressed() {
  for (int i = 0; i < targets.size(); i++) {
    Target t = targets.get(i);
    if (t.isHovered()) {
      t.hit = true;
    }
  }
}

// --- THE TARGET CLASS ---
class Target {
  float x, y;
  float s = 60;
  boolean hit = false;

  Target(float sx, float sy) {
    x = sx;
    y = sy;
  }

  boolean isHovered() {
    return dist(mouseX, mouseY, x, y) < s / 2;
  }

  void show() {
    // Color depends on state.
    if (hit)              fill(80, 200, 120);   // hit
    else if (isHovered()) fill(220);            // hovered
    else                  fill(90);             // idle

    noStroke();
    circle(x, y, s);
  }
}

// KEY IDEAS:
// - Each object in the list keeps its own state (hit is per-Target).
// - isHovered() uses mouseX/mouseY inside the class — the object checks itself.
// - mousePressed() loops the list and asks every Target if it was clicked.
// - The main sketch stays tiny; the class does the work.
