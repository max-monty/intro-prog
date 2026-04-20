// The Player class - NEW for Day 3.
// The player is controlled by the arrow keys.
// It has getter methods so other objects (like Asteroid) can check its position.

class Player {
  float x, y;
  float size;
  float speed;

  Player() {
    x = width / 2;
    y = height - 50;
    size = 30;
    speed = 5;
  }

  void update() {
    // Arrow key controls
    if (keyPressed) {
      if (keyCode == LEFT)  x -= speed;
      if (keyCode == RIGHT) x += speed;
    }
    // Stay on screen
    x = constrain(x, size/2, width - size/2);
  }

  void display() {
    fill(100, 200, 255);
    noStroke();
    triangle(x - size/2, y + size/2,
             x + size/2, y + size/2,
             x,          y - size/2);
  }

  // Getters so the Asteroid class can read the player's position.
  float getX() { return x; }
  float getY() { return y; }
  float getSize() { return size; }
}
