// ===== DAY 2 DEMO: Constructor Arguments + Arrays of Objects =====
// Goal: Reinforce Day 1 and introduce two new ideas:
//   1. Constructors can take arguments to customize each object.
//   2. We can create many objects at once using an array.
// Concepts: constructor arguments, arrays of objects, for loops through arrays.

Asteroid[] asteroids;

void setup() {
  size(500, 600);
  asteroids = new Asteroid[8];

  // Each asteroid gets its OWN x and size, passed in as arguments.
  for (int i = 0; i < asteroids.length; i++) {
    float startX = random(50, 450);
    float asteroidSize = random(20, 60);
    asteroids[i] = new Asteroid(startX, asteroidSize);
  }
}

void draw() {
  background(10, 10, 30);
  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i].fall();
    asteroids[i].display();
  }
}
