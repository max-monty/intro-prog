// Day 4 Basic - If-Else and If-Else If-Else
// Topics: if-else, if-else if-else chains

size(400, 300);
background(240);
textAlign(CENTER, CENTER);
textSize(16);

// --- IF-ELSE STRUCTURE ---
// if (condition) {
//   code if true
// } else {
//   code if false
// }

int temperature = 75;

// Only ONE of these blocks will run
if (temperature > 80) {
  fill(255, 100, 100);
  text("It's hot!", 200, 40);
} else {
  fill(100, 100, 255);
  text("It's not too hot", 200, 40);
}

// --- IF-ELSE IF-ELSE CHAIN ---
// if (condition1) {
//   code if condition1 is true
// } else if (condition2) {
//   code if condition2 is true
// } else {
//   code if all conditions are false
// }

int score = 85;

// Checks conditions in order, runs first match
if (score >= 90) {
  fill(0, 200, 0);
  text("Grade: A", 200, 100);
} else if (score >= 80) {
  fill(100, 200, 100);
  text("Grade: B", 200, 100);  // This one runs (85 >= 80)
} else if (score >= 70) {
  fill(200, 200, 0);
  text("Grade: C", 200, 100);
} else if (score >= 60) {
  fill(255, 150, 0);
  text("Grade: D", 200, 100);
} else {
  fill(255, 0, 0);
  text("Grade: F", 200, 100);
}

// --- ORDER MATTERS ---
// Conditions are checked top to bottom
// First true condition wins

int age = 25;

if (age >= 18) {
  text("Adult", 200, 160);  // This runs first (25 >= 18)
} else if (age >= 21) {
  text("21+", 200, 160);    // This never runs even though 25 >= 21
} else {
  text("Minor", 200, 160);
}

// --- BETTER ORDER ---
// Check more specific conditions first

if (age >= 21) {
  text("(21 or older)", 200, 190);  // This runs
} else if (age >= 18) {
  text("(18-20)", 200, 190);
} else {
  text("(Under 18)", 200, 190);
}

// --- MULTIPLE RANGES ---
fill(0);
int hour = 14;  // 2 PM in 24-hour time

if (hour < 12) {
  text("Good morning!", 200, 250);
} else if (hour < 17) {
  text("Good afternoon!", 200, 250);  // This runs (14 < 17)
} else if (hour < 21) {
  text("Good evening!", 200, 250);
} else {
  text("Good night!", 200, 250);
}
