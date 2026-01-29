// Day 5 Basic - Nested If Statements
// Topics: nesting if statements, logical operators

size(400, 300);
background(240);
textAlign(CENTER, CENTER);
textSize(14);

// --- NESTED IF STATEMENTS ---
// An if statement inside another if statement

int age = 25;
boolean hasLicense = true;

// Check age first, then check license
if (age >= 16) {
  // Only check license if old enough
  if (hasLicense) {
    fill(0, 150, 0);
    text("You can drive!", 200, 40);
  } else {
    fill(255, 150, 0);
    text("Get your license first", 200, 40);
  }
} else {
  fill(255, 0, 0);
  text("Too young to drive", 200, 40);
}

// --- LOGICAL OPERATORS ---
// && (AND) - both must be true
// || (OR)  - at least one must be true
// !  (NOT) - reverses true/false

// --- AND OPERATOR (&&) ---
int temperature = 75;
boolean isSunny = true;

// Both conditions must be true
if (temperature > 70 && isSunny) {
  fill(0, 150, 0);
  text("Perfect beach weather!", 200, 100);
}

// --- OR OPERATOR (||) ---
String day = "Saturday";

// At least one must be true
if (day == "Saturday" || day == "Sunday") {
  fill(0, 0, 200);
  text("It's the weekend!", 200, 140);
}

// --- NOT OPERATOR (!) ---
boolean isRaining = false;

// Reverses the boolean
if (!isRaining) {
  fill(255, 200, 0);
  text("No rain today!", 200, 180);
}

// --- COMBINING OPERATORS ---
int hour = 14;
boolean isWeekday = true;

// Complex condition
if ((hour >= 9 && hour < 17) && isWeekday) {
  fill(100);
  text("Working hours", 200, 220);
}

// --- EQUIVALENT NESTED VERSION ---
// The above is the same as:
if (hour >= 9 && hour < 17) {
  if (isWeekday) {
    text("(nested version)", 200, 245);
  }
}
