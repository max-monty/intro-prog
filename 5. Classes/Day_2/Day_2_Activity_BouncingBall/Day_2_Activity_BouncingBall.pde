// Day 2 Activity Starter - Bouncing Ball Class
//
// Build a Ball class that moves on its own, knows how to draw itself,
// and can REPORT whether it's hitting the edge of the canvas.
//
// Required methods:
//   move()              - void, updates x and y
//   show()              - void, draws the ball
//   isHittingEdge()     - RETURNS a boolean (true if touching any edge)
//
// In draw(), use isHittingEdge() to reverse speeds so the ball bounces.

Ball b;

void setup() {
  size(400, 400);
  b = new Ball(random(3, 6));
}

void draw() {
  background(20);

  // TODO: call b.move()
  // TODO: if (b.isHittingEdge()) ... reverse the right speed(s)
  // TODO: call b.show()
}


// --- THE BALL CLASS ---
class Ball {
  // --- INSTANCE VARIABLES ---
  float x;
  float y;
  color c;
  float xSpeed;
  float ySpeed;
  float size = 30;

  // --- CONSTRUCTOR ---
  // Takes a starting speed `s`. Random position and color.
  Ball(float s) {
    x = random(width);
    y = random(height);
    c = color(random(255), random(255), random(255));
    xSpeed = s;
    ySpeed = s;
  }

  // --- MOVE: update x and y using xSpeed, ySpeed ---
  void move() {
    // TODO
  }

  // --- SHOW: draw the ball ---
  void show() {
    // TODO
  }

  // --- isHittingEdge: RETURN true if ball is touching any wall ---
  boolean isHittingEdge() {
    return false;
  }

  // --- OPTIONAL for Level 3: separate horizontal / vertical checks ---
  // boolean isHittingSide()   
  // boolean isHittingTopBot() 
}
