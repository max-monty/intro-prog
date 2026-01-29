// Fish Demo

size(400, 300);  // Create a 400x300 pixel canvas


// --- TAIL FIN ---

triangle(300, 120, // Point 1: tip of tail
  250, 120, // Point 2: top of tail base
  250, 180);      // Point 3: bottom of tail base



triangle(300, 180, // Point 1: tip of tail
  250, 120, // Point 2: top of tail base
  250, 180);      // Point 3: bottom of tail base

// --- FISH BODY ---

ellipse(200, 150, 150, 80);  // Body centered at (200, 150)


// --- SIDE FIN ---
triangle(200, 190, // Point 1: tip (bottom)
  180, 170, // Point 2: left base
  220, 170);          // Point 3: right base

// --- EYE ---
ellipse(160, 145, 25, 25);  // Outer eye (white part)

ellipse(155, 145, 10, 10);  // Pupil (inner circle)
