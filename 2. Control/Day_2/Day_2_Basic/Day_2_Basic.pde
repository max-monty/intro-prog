// Day 2 Basic - Randomness
// Topics: random() with one parameter, random() with two parameters

size(400, 300);
background(240);

// --- RANDOM WITH ONE PARAMETER ---
// random(max) returns a value from 0 to max (not including max)
float randomValue = random(100);  // 0 to 99.999...

// --- RANDOM WITH TWO PARAMETERS ---
// random(min, max) returns a value from min to max
float randomInRange = random(50, 150);  // 50 to 149.999...

// --- RANDOM COLORS ---
float r = random(256);  // 0 to 255
float g = random(256);
float b = random(256);
fill(r, g, b);
circle(100, 100, 60);

// --- RANDOM POSITION ---
float randomX = random(width);   // 0 to 399
float randomY = random(height);  // 0 to 299
fill(100, 150, 255);
circle(randomX, randomY, 40);

// --- RANDOM SIZE ---
float randomSize = random(20, 80);  // Size between 20 and 80
fill(255, 100, 100);
circle(300, 200, randomSize);

// --- CONVERTING TO INTEGER ---
// Use int() to get whole numbers
int diceRoll = int(random(1, 7));  // 1, 2, 3, 4, 5, or 6

fill(0);
textSize(16);
text("Dice roll: " + diceRoll, 200, 280);
