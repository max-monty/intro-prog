// Day 1 Basic Demo - Objects I
// Introduces: class, constructor, instance variables, instance methods, new
//
// We build one small class (Firefly), then create a few objects from it.

Firefly f1;
Firefly f2;
Firefly f3;

void setup() {
  size(500, 300);
  f1 = new Firefly(125, 150);
  f2 = new Firefly(250, 150);
  f3 = new Firefly(375, 150);
}

void draw() {
  background(15, 15, 40);

  // Each Firefly manages itself.
  f1.flicker();
  f1.show();

  f2.flicker();
  f2.show();

  f3.flicker();
  f3.show();

  if(frameCount % 10 == 0) {
    f1.move();
    f2.move();
    f3.move();
  }
}

// --- THE FIREFLY CLASS ---
class Firefly {
  // --- INSTANCE VARIABLES ---
  float x;
  float y;
  float brightness;

  // --- CONSTRUCTOR ---
  Firefly(float startX, float startY) {
    x = startX;
    y = startY;
    brightness = 200;
  }

  // --- INSTANCE METHODS ---
  void flicker() {
    brightness = random(80, 255);
  }

  void show() {
    noStroke();
    fill(255, 230, 120, brightness);
    circle(x, y, 20);
  }

  void move() {
    x += random(-5, 5);
    y += random(-5, 5);
  }

}

// KEY IDEAS:
// - A class is a blueprint (Firefly).
// - An object is one instance of that blueprint (f1, f2, f3).
// - Each object has its own copy of the instance variables.
// - Instance methods act on the object they are called on.
