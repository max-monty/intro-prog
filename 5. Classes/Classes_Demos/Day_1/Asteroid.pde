// The Asteroid class.
// On Day 1, the constructor takes NO arguments.
// All values are set inside the constructor using random() or fixed numbers.

class Asteroid {
  float x, y;        // position
  float speed;       // falling speed
  float size;        // diameter
  color c;           // color

  Asteroid() {
    x = random(50, 450);     // random horizontal position
    y = 0;                   // start at the top
    speed = random(2, 5);    // random falling speed
    size = 40;               // fixed size for now
    c = color(150, 150, 170);
  }

  void fall() {
    y += speed;
    if (y > height + size) {
      y = 0;               // wrap back to top
      x = random(50, 450); // new random x
    }
  }

  void display() {
    fill(c);
    noStroke();
    circle(x, y, size);
  }
}
