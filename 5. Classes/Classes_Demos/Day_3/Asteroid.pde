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

  // Takes a Player object, uses its instance variables to check for overlap.
  boolean hitsPlayer(float playerX, float playerY, float playerSize) {
    float d = dist(x, y, playerX, playerY);
    return d < (size/2 + playerSize/2);
  }
}
