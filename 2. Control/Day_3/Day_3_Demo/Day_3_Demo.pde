// Day 3 Demo - Boolean Variables and If Statements
// Light switch with toggle functionality

// --- CUSTOM VARIABLES ---
boolean lightOn = false;
boolean nightMode = false;
int brightness = 0;

void setup() {
  size(400, 400);
  textAlign(CENTER, CENTER);
}

void draw() {
  // --- BACKGROUND BASED ON NIGHT MODE ---
  if (nightMode) {
    background(20, 20, 40);  // Dark blue night
  }
  if (!nightMode) {
    background(135, 206, 235);  // Sky blue day
  }

  // --- DRAW ROOM ---
  drawRoom();

  // --- DRAW LIGHT BULB ---
  drawLightBulb();

  // --- ADJUST BRIGHTNESS ---
  if (lightOn) {
    if (brightness < 255) {
      brightness = brightness + 5;  // Fade in
    }
  }
  if (!lightOn) {
    if (brightness > 0) {
      brightness = brightness - 5;  // Fade out
    }
  }

  // --- DISPLAY INFO ---
  displayInfo();
}

void keyPressed() {
  // --- TOGGLE LIGHT WITH SPACE ---
  if (key == ' ') {
    lightOn = !lightOn;  // Toggle: true becomes false, false becomes true
  }

  // --- TOGGLE NIGHT MODE WITH N ---
  if (key == 'n' || key == 'N') {
    nightMode = !nightMode;
  }

  // --- TURN LIGHT ON WITH 1 ---
  if (key == '1') {
    lightOn = true;
  }

  // --- TURN LIGHT OFF WITH 0 ---
  if (key == '0') {
    lightOn = false;
  }
}

// Function to draw the room
void drawRoom() {
  // Floor
  fill(139, 90, 43);
  noStroke();
  rect(0, 300, 400, 100);

  // Walls get lighter when light is on
  if (lightOn) {
    fill(200 + brightness/5, 180 + brightness/5, 150 + brightness/5);
  }
  if (!lightOn) {
    fill(150, 130, 100);
  }
  rect(50, 100, 300, 200);
}

// Function to draw the light bulb
void drawLightBulb() {
  // Lamp cord
  stroke(50);
  strokeWeight(3);
  line(200, 0, 200, 120);

  // Lamp shade
  fill(80);
  noStroke();
  triangle(160, 120, 240, 120, 200, 80);

  // Light bulb
  if (lightOn) {
    // Glow effect when on
    fill(255, 255, 200, brightness/2);
    noStroke();
    circle(200, 150, 100);  // Outer glow

    fill(255, 255, brightness);
    circle(200, 150, 40);  // Bulb
  }
  if (!lightOn) {
    fill(100);
    noStroke();
    circle(200, 150, 40);  // Bulb (off)
  }
}

// Function to display status and instructions
void displayInfo() {
  fill(255);
  textSize(14);

  // Light status
  String lightStatus = "Light: ";
  if (lightOn) {
    lightStatus = lightStatus + "ON";
  }
  if (!lightOn) {
    lightStatus = lightStatus + "OFF";
  }
  text(lightStatus, width/2, 340);

  // Mode status
  String modeStatus = "Mode: ";
  if (nightMode) {
    modeStatus = modeStatus + "Night";
  }
  if (!nightMode) {
    modeStatus = modeStatus + "Day";
  }
  text(modeStatus, width/2, 360);

  // Instructions
  textSize(12);
  text("SPACE: toggle | N: night mode | 1: on | 0: off", width/2, 385);
}
