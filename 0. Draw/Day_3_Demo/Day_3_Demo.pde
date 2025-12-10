// Fish Demo - Colors
// setup() runs ONCE at the beginning of the program
// Everything inside the curly braces { } is a CODE BLOCK
void setup() {
  size(400, 300);  // Create a 400x300 pixel canvas
}

// draw() runs over and over (about 60 times per second)
// This code block runs continuously in a loop
void draw() {
  background(170, 220, 240);  // Light blue water background
  
  // --- TAIL FIN ---
  // triangle(x1, y1, x2, y2, x3, y3)
  fill(180, 70, 70);          // Darker shade of body color
  noStroke();                  // Clean look without outlines
  triangle(300, 120,       
           250, 120,       
           250, 180);      
           
  triangle(300, 180,       
           250, 120,       
           250, 180);      
  
  // --- FISH BODY ---
  // ellipse(x, y, width, height)
  fill(200, 100, 100);         // Pinkish-red body
  stroke(150, 70, 70);         // Darker outline
  strokeWeight(2);             // Slightly thicker outline
  ellipse(200, 150, 150, 80);  // Body centered at (200, 150)
  
  // --- SIDE FIN ---
  fill(180, 70, 70);           // Match tail color
  noStroke();
  triangle(200, 190,       
           180, 160,       
           220, 160);      
  
  // --- EYE ---
  // The eye is a circle (ellipse with equal width and height)
  fill(255);                   // White outer eye
  stroke(0);
  strokeWeight(1);
  ellipse(160, 145, 25, 25);  
  
  fill(0);                     // Black pupil
  noStroke();
  ellipse(155, 145, 10, 10);   // Pupil shifted left (looking forward)
}
