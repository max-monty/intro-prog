// The Asteroid class - UPDATED for Day 3.
// New: hitsPlayer() method that accepts a Player object as an argument.
// This is the key new idea: one class's method takes another class's object.

class Asteroid {
  float x, y;
  float speed;
  float size;
  color c;

  Asteroid(float startX, float asteroidSize) {
    x = startX;
    y = random(-200, 0);
    size = asteroidSize;
    speed = random(2, 5);
    c = color(150, 150, 170);
  }

  void fall() {
    y += speed;
    if (y > height + size) {
      y = -size;
      x = random(50, 450);
    }
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(x, y, size, size);
  }

  // NEW: takes a Player object, uses its getters to check for overlap.
  boolean hitsPlayer(Player p) {
    float d = dist(x, y, p.x, p.y);
    return d < (size/2 + p.size/2);
  }
}
