// ===== DAY 1 DEMO: Intro to Classes =====
// Goal: Create one class, instantiate it, display it on screen.
// Concepts: class definition, fields, constructor (no args), methods, one object.

Asteroid a;

void setup() {
  size(500, 600);
  a = new Asteroid();
}

void draw() {
  background(10, 10, 30);
  a.fall();
  a.display();
}
