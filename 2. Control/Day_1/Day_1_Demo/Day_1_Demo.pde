// Day 1 Demo - String Variables
// Interactive message builder with strings

// --- CUSTOM VARIABLES ---
String playerName = "Player 1";
String action = "is exploring";
String location = "the forest";
int health = 100;
int coins = 0;

void setup() {
  size(500, 400);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(50, 80, 50);  // Forest green background

  // --- TITLE ---
  fill(255, 220, 100);  // Gold color
  textSize(28);
  text("Adventure Game", width/2, 40);

  // --- BUILD STATUS MESSAGE ---
  // Concatenate strings to create a full sentence
  String statusMessage = playerName + " " + action + " " + location;

  fill(255);
  textSize(20);
  text(statusMessage, width/2, 120);

  // --- STATS DISPLAY ---
  // Combine strings with numbers
  String healthText = "Health: " + health;
  String coinsText = "Coins: " + coins;

  fill(255, 100, 100);  // Red for health
  textSize(18);
  text(healthText, width/2, 200);

  fill(255, 215, 0);  // Gold for coins
  text(coinsText, width/2, 230);

  // --- INSTRUCTIONS ---
  fill(200);
  textSize(14);
  text("Press 1-3 to change location", width/2, 320);
  text("Press SPACE to collect coins", width/2, 340);
  text("Press H to heal", width/2, 360);
}

void keyPressed() {
  // --- CHANGE LOCATION ---
  if (key == '1') {
    location = "the forest";
    action = "is exploring";
  }
  if (key == '2') {
    location = "the cave";
    action = "is searching";
  }
  if (key == '3') {
    location = "the village";
    action = "is visiting";
  }

  // --- COLLECT COINS ---
  if (key == ' ') {
    coins = coins + 10;
  }

  // --- HEAL ---
  if (key == 'h' || key == 'H') {
    health = 100;
  }
}
