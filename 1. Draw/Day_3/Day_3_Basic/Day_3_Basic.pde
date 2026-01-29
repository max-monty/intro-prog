// Day 3 Basic - Colors and Styling
// Topics: background(), fill(), stroke(), strokeWeight(), noStroke()

size(400, 300);

background(200, 230, 255);  // Light blue background

// --- FILLED RECTANGLE ---
fill(255, 100, 100);        // Red fill
stroke(100, 0, 0);          // Dark red outline
strokeWeight(3);
rect(50, 50, 100, 80);

// --- CIRCLE WITH NO STROKE ---
fill(100, 200, 100);        // Green fill
noStroke();
ellipse(250, 100, 80, 80);

// --- TRIANGLE WITH THICK STROKE ---
fill(255, 200, 0);          // Yellow fill
stroke(150, 100, 0);        // Brown outline
strokeWeight(5);
triangle(150, 250, 100, 180, 200, 180);
