// Day 4 Demo - If-Else and If-Else If-Else
// Color zone detector - shows different colors based on mouse position

// --- CUSTOM VARIABLES ---
String zoneName = "";
int zoneR = 200;
int zoneG = 200;
int zoneB = 200;

void setup() {
  size(600, 400);
  textAlign(CENTER, CENTER);
}

void draw() {
  // --- DETERMINE ZONE BASED ON MOUSE X ---
  if (mouseX < 150) {
    zoneName = "RED ZONE";
    zoneR = 255;
    zoneG = 100;
    zoneB = 100;
  } else if (mouseX < 300) {
    zoneName = "YELLOW ZONE";
    zoneR = 255;
    zoneG = 255;
    zoneB = 100;
  } else if (mouseX < 450) {
    zoneName = "GREEN ZONE";
    zoneR = 100;
    zoneG = 255;
    zoneB = 100;
  } else {
    zoneName = "BLUE ZONE";
    zoneR = 100;
    zoneG = 100;
    zoneB = 255;
  }

  // --- DRAW BACKGROUND ---
  background(zoneR, zoneG, zoneB);

  // --- DRAW ZONE DIVIDERS ---
  stroke(0);
  strokeWeight(2);
  line(150, 0, 150, height);
  line(300, 0, 300, height);
  line(450, 0, 450, height);

  // --- DRAW ZONE LABELS ---
  fill(0);
  textSize(14);
  text("RED", 75, 30);
  text("YELLOW", 225, 30);
  text("GREEN", 375, 30);
  text("BLUE", 525, 30);

  // --- DISPLAY CURRENT ZONE ---
  fill(0);
  textSize(32);
  text(zoneName, width/2, height/2);

  // --- DISPLAY VERTICAL POSITION MESSAGE ---
  String heightMessage = "";
  if (mouseY < height/3) {
    heightMessage = "TOP";
  } else if (mouseY < 2*height/3) {
    heightMessage = "MIDDLE";
  } else {
    heightMessage = "BOTTOM";
  }

  textSize(20);
  text("Position: " + heightMessage, width/2, height/2 + 50);

  // --- DISPLAY COORDINATES ---
  displayInfo();
}

// Function to display mouse coordinates and instructions
void displayInfo() {
  fill(0);
  textSize(12);
  text("Mouse: (" + mouseX + ", " + mouseY + ")", width/2, height - 30);
  text("Move mouse to change zones", width/2, height - 15);
}
