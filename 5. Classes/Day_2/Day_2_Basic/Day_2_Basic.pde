// Day 2 Basic Demo - Objects II
// Introduces: instance methods that RETURN a value.
//
// The Button class answers a question: "am I being pressed?"
// The return value is a boolean. We use it in an if statement.

Button b;

void setup() {
  size(400, 400);
  b = new Button(width / 2, height / 2, 100);
}

void draw() {
  background(240);

  // Use the return value of isPressed() to choose a fill.
  if (b.isPressed()) {
    fill(0);
  } else {
    fill(255);
  }

  b.show();
}

// --- THE BUTTON CLASS ---
class Button {
  // --- INSTANCE VARIABLES ---
  float x;
  float y;
  float s;

  // --- CONSTRUCTOR ---
  Button(float sx, float sy, float ss) {
    x = sx;
    y = sy;
    s = ss;
  }

  // --- INSTANCE METHOD THAT RETURNS A BOOLEAN ---
  boolean isPressed() {
    boolean inRadius = dist(mouseX, mouseY, x, y) < s / 2;
    return mousePressed && inRadius;
  }

  // --- VOID INSTANCE METHOD ---
  void show() {
    stroke(0);
    strokeWeight(2);
    circle(x, y, s);
  }
}

// KEY IDEAS:
// - A method's return type is the first word of its signature.
//   void     = returns nothing (just does something)
//   boolean  = returns true or false
//   float    = returns a number
// - Use the returned value in if statements, assignments, or drawing calls.
