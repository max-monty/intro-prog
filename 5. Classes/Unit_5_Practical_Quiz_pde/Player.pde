class Player {
  float x, y;
  float size = 30;

  Player() {
    reset();
  }

  void display() {
    rect(x, y, size, size);
  }

  void reset() {
    x = width / 2 - size / 2;
    y = height - size - 10;
  }

  boolean hits(Car c) {
    return x < c.x + c.w &&
      x + size > c.x &&
      y < c.y + c.h &&
      y + size > c.y;
  }
}
