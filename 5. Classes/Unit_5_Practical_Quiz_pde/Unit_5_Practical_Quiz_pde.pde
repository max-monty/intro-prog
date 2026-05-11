// Simplest possible crossing game
// Demonstrates: 2 classes, array of objects, object interaction

Player player;
Car[] cars;

void setup() {
  size(400, 500);
  player = new Player();
  
  cars = new Car[5];
  cars[0] = new Car(0,   100, 3);
  cars[1] = new Car(200, 180, -2);
  cars[2] = new Car(50,  260, 4);
  cars[3] = new Car(300, 340, -3);
  cars[4] = new Car(100, 420, 2);
}

void draw() {
  background(50);
  
  // update and draw cars
  for (int i = 0; i < cars.length; i++) {
    cars[i].move();
    cars[i].display();
    
    // check collision with player
    if (player.hits(cars[i])) {
      player.reset();
    }
  }
  
  player.display();
  
  // win check
  if (player.y < 0) {
    player.reset();
  }
}

void keyPressed() {
  if (keyCode == UP)    player.y -= 40;
  if (keyCode == DOWN)  player.y += 40;
  if (keyCode == LEFT)  player.x -= 40;
  if (keyCode == RIGHT) player.x += 40;
}
