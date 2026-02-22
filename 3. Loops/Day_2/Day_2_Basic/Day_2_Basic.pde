// Day 2 Basic - For Loops
// Bare minimum: syntax, comparison to while, visual mapping

size(500, 300);
background(240);

// --- FOR LOOP SYNTAX ---
// for (start; condition; update) {
//   code to repeat
// }

// --- DRAW 8 CIRCLES ---
for (int i = 0; i < 8; i = i + 1) {
  fill(100, 150, 255);
  circle(30 + i * 60, 60, 40);
}

// --- SAME THING AS A WHILE LOOP ---
// int i = 0;
// while (i < 8) {
//   circle(30 + i * 60, 60, 40);
//   i = i + 1;
// }

// --- USING LOOP VARIABLE FOR VISUALS ---
for (int i = 0; i < 10; i = i + 1) {
  float size = 10 + i * 5;
  fill(50 + i * 20, 100, 200);
  rect(10 + i * 48, 120, size, size);
}

// --- USING map() ---
for (int i = 0; i < 15; i = i + 1) {
  float gray = map(i, 0, 14, 0, 255);
  fill(gray);
  rect(10 + i * 32, 230, 28, 40);
}
