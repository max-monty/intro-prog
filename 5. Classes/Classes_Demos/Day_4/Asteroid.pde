// The Asteroid class - UPDATED for Day 4.
// New: hitsBullet() method so asteroids can detect bullet collisions.

class Asteroid {
  float x, y;
  float speed;
  float size;
  color c;

  Asteroid(float startX, float asteroidSize) {
    x = startX;
    y = -asteroidSize;
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

  boolean hitsPlayer(Player p) {
    float d = dist(x, y, p.getX(), p.getY());
    return d < (size/2 + p.getSize()/2);
  }

  // NEW: takes a Bullet object and checks for collision.
  boolean hitsBullet(Bullet b) {
    float d = dist(x, y, b.getX(), b.getY());
    return d < (size/2 + b.getSize()/2);
  }
}
