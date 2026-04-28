// ===== DAY 3 DEMO: Classes That Interact =====
// Goal: Add a Player class. Player and Asteroid classes need to know
//       about each other for collision detection.
// Concepts: multiple classes, passing one object to another object's method,
//           collision detection between classes, getters.

Player player;
Asteroid[] asteroids;

void setup() {
  size(500, 600);
  player = new Player();
  asteroids = new Asteroid[8];
  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i] = new Asteroid(random(50, 450), random(20, 50));
  }
}

void draw() {
  background(10, 10, 30);

  player.update();
  player.display();

  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i].fall();
    asteroids[i].display();

    // The asteroid checks if it hit the player.
    // We pass the player instance variables to the method.
    if (asteroids[i].hitsPlayer(player.x, player.y, player.size)) {
      fill(255, 0, 0);
      textAlign(CENTER);
      textSize(48);
      text("HIT!", width/2, height/2);
    }
  }
}
