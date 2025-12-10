// Fish Demo - Learning Setup, Draw, and Code Blocks

// setup() runs ONCE at the beginning of the program
// Everything inside the curly braces { } is a CODE BLOCK
void setup() {
  size(400, 300);  // Create a 400x300 pixel canvas
}

// draw() runs over and over (about 60 times per second)
// This code block runs continuously in a loop
void draw() {
  
  // --- TAIL FIN ---
  // triangle(x1, y1, x2, y2, x3, y3)
  triangle(300, 120,       // Point 1: tip of tail
           250, 120,       // Point 2: top of tail base
           250, 180);      // Point 3: bottom of tail base
           
  triangle(300, 180,       // Point 1: tip of tail
           250, 120,       // Point 2: top of tail base
           250, 180);      // Point 3: bottom of tail base
  
  // --- FISH BODY ---
  // ellipse(x, y, width, height)

  ellipse(200, 150, 150, 80);  // Body centered at (200, 150)
  
  
  // --- SIDE FIN ---
  triangle(200, 190,       // Point 1: tip (bottom)
           180, 170,       // Point 2: left base
           220, 170);      // Point 3: right base
  
  // --- EYE ---
  // The eye is a circle (ellipse with equal width and height)
  ellipse(160, 145, 25, 25);  // Outer eye (white part)
  
  ellipse(155, 145, 10, 10);  // Pupil (inner circle)
}
