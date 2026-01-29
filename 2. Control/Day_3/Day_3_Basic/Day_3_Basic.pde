// Day 3 Basic - Boolean Variables and If Statements
// Topics: boolean, if statement, comparison operators

size(400, 300);
background(240);

// --- BOOLEAN VARIABLES ---
// Booleans can only be true or false
boolean isRaining = true;
boolean isSunny = false;

// --- IF STATEMENT SYNTAX ---
// if (condition) {
//   code to run if condition is true
// }

// --- EXAMPLE WITH BOOLEAN ---
if (isRaining) {
  fill(100, 100, 200);
  text("Bring an umbrella!", 200, 50);
}

if (isSunny) {
  fill(255, 200, 0);
  text("Wear sunglasses!", 200, 80);  // This won't display
}

// --- COMPARISON OPERATORS ---
int score = 85;
int passingScore = 70;

// == equals
// != not equals
// <  less than
// >  greater than
// <= less than or equal
// >= greater than or equal

textAlign(CENTER, CENTER);
textSize(16);

if (score >= passingScore) {
  fill(0, 150, 0);
  text("You passed!", 200, 150);
}

if (score < passingScore) {
  fill(200, 0, 0);
  text("Try again", 200, 150);  // This won't display
}

// --- CHECKING EQUALITY ---
int lives = 0;

if (lives == 0) {
  fill(200, 0, 0);
  text("Game Over", 200, 220);
}

// --- NOT EQUALS ---
String weather = "cloudy";

if (weather != "sunny") {
  fill(100);
  text("It's not sunny today", 200, 270);
}
