// The Player class is below. Create an array of 10 Player objects
// 1. Declare the length 10 array
// 2. Fill that array with new instances of Player

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

}
