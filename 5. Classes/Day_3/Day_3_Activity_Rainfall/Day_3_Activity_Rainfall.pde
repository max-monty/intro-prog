// Day 3 Activity Starter - Rainfall
// A Raindrop class + an ArrayList<Raindrop> that grows each frame.
//
// Fill in the class methods. In draw(), spawn a few new drops per
// frame, update and display each drop, and remove any that fall
// off the bottom of the screen.

ArrayList<Raindrop> drops = new ArrayList<Raindrop>();

void setup() {
  size(600, 500);
}

void draw() {
  background(15, 25, 45);

  // --- SPAWN A FEW NEW DROPS PER FRAME ---
  for (int i = 0; i < 3; i++) {
    drops.add(new Raindrop());
  }

  // --- UPDATE + DRAW (backward loop so we can remove safely) ---
  for (int i = drops.size() - 1; i >= 0; i--) {
    Raindrop d = drops.get(i);
    // TODO: d.fall();
    // TODO: d.show();
    // TODO: if (d.isOffScreen()) drops.remove(i);
  }
}


// --- THE RAINDROP CLASS ---
class Raindrop {
  // --- INSTANCE VARIABLES ---
  float x;
  float y;
  float speed;
  float len;
  color c;

  // --- CONSTRUCTOR ---
  Raindrop() {
    x = random(width);
    y = random(-50, 0);          // start just above the canvas
    speed = random(4, 12);
    len = map(speed, 4, 12, 6, 20);
    c = color(180, 200, 255, 200);
  }

  // --- FALL: move down by speed ---
  void fall() {
    // TODO
  }

  // --- SHOW: draw a short vertical line from (x, y) to (x, y + len) ---
  void show() {
    // TODO
  }

  // --- RETURNS true if the drop has passed the bottom of the canvas ---
  boolean isOffScreen() {
    // TODO
    return false;
  }
}
