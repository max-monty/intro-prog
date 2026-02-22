// Day 3 Basic - Nested For Loops (Reference)
// Bare minimum: grid pattern, modulo operator

size(400, 400);
background(240);

// --- NESTED FOR LOOP = GRID ---
// Outer loop controls rows (y direction)
// Inner loop controls columns (x direction)

int spacing = 50;

for (int y = 25; y < height; y = y + spacing) {
  for (int x = 25; x < width; x = x + spacing) {
    fill(100, 150, 255);
    stroke(50);
    rect(x - 15, y - 15, 30, 30);
  }
}

// --- MODULO OPERATOR (%) ---
// Returns the remainder of division
// 0 % 2 = 0    (even)
// 1 % 2 = 1    (odd)
// 2 % 2 = 0    (even)
// 3 % 2 = 1    (odd)

// Useful for alternating patterns:
// if (i % 2 == 0) → every other one
// if (i % 3 == 0) → every third one

// --- CHECKERBOARD (uncomment to try) ---
// for (int row = 0; row < 8; row++) {
//   for (int col = 0; col < 8; col++) {
//     if ((row + col) % 2 == 0) {
//       fill(255);
//     } else {
//       fill(0);
//     }
//     rect(col * 50, row * 50, 50, 50);
//   }
// }
