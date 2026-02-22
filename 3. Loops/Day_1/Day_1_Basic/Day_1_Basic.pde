// Day 1 Basic - While Loops
// Bare minimum: loop syntax, counter variable, repeated drawing

size(500, 300);
background(240);

// --- WHILE LOOP SYNTAX ---
// while (condition) {
//   code to repeat
//   update the condition
// }

// --- DRAW A ROW OF CIRCLES ---
int x = 50;

while (x < 500) {
  fill(100, 150, 255);
  circle(x, 100, 40);
  x = x + 60;  // Move to next position
}

// --- COUNTING WITH A WHILE LOOP ---
int count = 0;

while (count < 5) {
  fill(255, 100, 100);
  rect(50 + count * 90, 200, 40, 40);
  count = count + 1;
}

// KEY IDEA: Three parts of a while loop
// 1. Initialize:  int x = 50;
// 2. Condition:   while (x < 500)
// 3. Update:      x = x + 60;
// Forget the update = INFINITE LOOP!
