// Fish Demo - void functions

// --- CUSTOM VARIABLES ---
float fish0X;
float fish0Y;
float speed0 = 2;

float fish1X;
float fish1Y;
float speed1 = 1;

float fish2X;
float fish2Y;
float speed2 = 5;


void setup() {
  size(600, 600);

  // Initialize first fish
  fish0X = width / 2;   // Start in center horizontally
  fish0Y = height / 2;  // Start in center vertically

  // Initialize second fish
  fish1X = 100;   // Start in center horizontally
  fish1Y = 100;  // Start in center vertically

  // Initialize third fish
  fish2X = 500;   // Start in center horizontally
  fish2Y = 500;  // Start in center vertically
}

void draw() {
  background(170, 220, 240);


  // --- DRAW THE FISH using variables ---
  drawFish(fish0X, fish0Y);
  drawFish(fish1X, fish1Y);
  drawFish(fish2X, fish2Y);

  // --- MOVE THE FISH using a function ---
  fish0X = updateXPos(fish0X, speed0);
  fish1X = updateXPos(fish1X, speed1);
  fish2X = updateXPos(fish2X, speed2);



  // --- DISPLAY BUILT-IN VARIABLES ---
  displayInfo();
}



// Function to draw fish
void drawFish(float x, float y) {
  // --- TAIL FIN ---
  fill(180, 70, 70);
  noStroke();
  triangle(x + 100, y - 30,
    x + 50, y - 30,
    x + 50, y + 30);

  triangle(x + 100, y + 30,
    x + 50, y - 30,
    x + 50, y + 30);

  // --- FISH BODY ---
  fill(200, 100, 100);
  stroke(150, 70, 70);
  strokeWeight(2);
  ellipse(x, y, 150, 80);

  // --- SIDE FIN ---
  fill(180, 70, 70);
  noStroke();
  triangle(x, y + 40,
    x - 20, y + 10,
    x + 20, y + 10);

  // --- EYE ---
  fill(255);
  stroke(0);
  strokeWeight(1);
  ellipse(x - 40, y - 5, 25, 25);

  fill(0);
  noStroke();
  ellipse(x - 45, y - 5, 10, 10);
}

float updateXPos(float x, float speed){
  x -= speed;      // Move left
  if (x < -75) {          // If fish goes off left edge
    x = width + 100;       // Wrap to right side
  }
  return x;
}

// Function to display variable information
void displayInfo() {
  fill(0);
  textSize(12);
  textAlign(LEFT);

  // Show built-in variables
  text("mouseX: " + mouseX, 10, 20);
  text("mouseY: " + mouseY, 10, 35);
  text("width: " + width, 10, 50);
  text("height: " + height, 10, 65);
  text("frameRate: " + int(frameRate), 10, 80);

  // Show our custom variables
  text("fish0X: " + int(fish0X), 10, 100);
  text("fish0Y: " + int(fish0Y), 10, 115);
  
  text("fish1X: " + int(fish1X), 10, 130);
  text("fish1Y: " + int(fish1Y), 10, 145);
  
  text("fish2X: " + int(fish2X), 10, 160);
  text("fish2Y: " + int(fish2Y), 10, 175);
}
