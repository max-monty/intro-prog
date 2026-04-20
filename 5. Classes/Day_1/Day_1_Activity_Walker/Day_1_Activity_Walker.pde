// Day 1 Activity Starter - Random Walker
// Build your own Walker class. Customize how it moves, how it looks,
// and how it reacts to its surroundings.
//
// Steps:
// 1. Fill in the constructor so every Walker starts with an x, y, and color.
// 2. Write step() so it moves the walker a little each frame.
// 3. Write display() so it draws itself.
// 4. Test it by making ONE walker in setup() and calling step()/display() in draw().

Walker w;

void setup() {
  size(600, 400);
  background(15);
  // TODO: Create your walker. Pass in a starting position.
  // w = new Walker( ... );
}

void draw() {
  // TODO: update and display your walker
  // w.step();
  // w.display();
}


// --- THE WALKER CLASS ---
class Walker {
  // --- INSTANCE VARIABLES ---
  float x;
  float y;
  // color c;  // optional: give each walker its own color

  // --- CONSTRUCTOR ---
  Walker(float startX, float startY) {
    // TODO: store the starting position
  }

  // --- STEP: change x and y a little each frame ---
  void step() {
    // TODO: Try random(-2, 2) on x and y.
    // Then try a bias (toward the mouse, toward center, toward the right...)
  }

  // --- DISPLAY: draw the walker ---
  void display() {
    // TODO: draw a small shape at (x, y)
  }
}
