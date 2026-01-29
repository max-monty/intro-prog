// Day 1 Basic - String Variables
// Topics: String declaration, concatenation, text()

size(400, 300);
background(240);

// --- STRING VARIABLES ---
String greeting = "Hello";
String name = "World";
String punctuation = "!";

// --- CONCATENATION ---
// Combine strings using the + operator
String message = greeting + ", " + name + punctuation;

// --- DISPLAYING TEXT ---
textSize(32);
fill(0);
textAlign(CENTER, CENTER);
text(message, 200, 100);  // Display at center top

// --- STRINGS WITH NUMBERS ---
int score = 95;
String scoreMessage = "Your score: " + score;

textSize(24);
text(scoreMessage, 200, 180);  // Display score message

// --- MULTIPLE LINES ---
String line1 = "Strings hold text";
String line2 = "Numbers hold values";

textSize(16);
text(line1, 200, 240);
text(line2, 200, 270);
