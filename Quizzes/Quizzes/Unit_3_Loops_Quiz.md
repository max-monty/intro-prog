# Unit 3: Loops/Iteration Quiz

**Name:** _______________________ **Period:** _____

**50 points | 45 minutes**

---

## Part 1: Multiple Choice (20 points — 2 points each)

**1.** A student wants to draw 10 trees in a row for a landscape. They write:

```processing
for (int i = 1; i <= 10; i++) {
  drawTree(i * 50, 300);
}
```

But the first tree appears at x = 50, not at the left edge (x = 0). What explains this?

- a) The function `drawTree` doesn't work with multiplication
- b) The loop starts at `i = 1`, so the first x-position is `1 * 50 = 50`, not 0
- c) The `<=` should be `<`
- d) The loop runs 11 times instead of 10

---

**2.** A generative art sketch scatters paint splatters. How many splatters appear each frame?

```processing
for (int i = 0; i < 8; i += 2) {
  circle(random(width), random(height), 30);
}
```

- a) 8
- b) 2
- c) 4
- d) 6

---

**3.** A student writes two versions of code to draw 5 colored squares:

```processing
// Version A
for (int i = 0; i < 5; i++) {
  fill(i * 50);
  rect(i * 60, 100, 50, 50);
}

// Version B
int i = 0;
while (i < 5) {
  fill(i * 50);
  rect(i * 60, 100, 50, 50);
}
```

Version A works correctly. Version B causes Processing to freeze. Why?

- a) While loops can't use `fill()`
- b) Version B is missing `i = i + 1` — `i` stays 0 forever, creating an infinite loop
- c) The `int i = 0` declaration is in the wrong place
- d) While loops can't draw rectangles

---

**4.** A generative art sketch creates a ring of dots:

```processing
for (int i = 0; i < 12; i++) {
  float angle = map(i, 0, 12, 0, TWO_PI);
  float dotX = 200 + cos(angle) * 100;
  float dotY = 200 + sin(angle) * 100;
  fill(map(i, 0, 11, 50, 255));
  circle(dotX, dotY, 15);
}
```

What does the `fill()` look like across the 12 dots?

- a) All dots are the same brightness
- b) Dots get progressively brighter from first to last
- c) Dots alternate between dark and light
- d) All dots are white (255)

---

**5.** A pixel art tool uses nested loops for a grid. The inner loop runs 10 times for each run of the outer loop. The outer loop runs 8 times. How many total shapes are drawn?

- a) 18
- b) 10
- c) 80
- d) 8

---

**6.** A music app displays beat markers:

```processing
for (int i = 0; i < 16; i++) {
  if (i % 4 == 0) {
    fill(255, 0, 0);
    rect(i * 25, 100, 22, 40);
  } else {
    fill(150);
    rect(i * 25, 110, 22, 20);
  }
}
```

How many red (large) rectangles appear?

- a) 16
- b) 8
- c) 4
- d) 1

---

**7.** A sketch builds a label inside a loop:

```processing
String label = "";
for (int i = 1; i <= 3; i++) {
  label = label + "Star " + i + " ";
}
println(label);
```

What gets printed?

- a) `Star 3`
- b) `Star 1 Star 2 Star 3 `
- c) `Star 1Star 2Star 3`
- d) `Star Star Star 1 2 3 `

---

**8.** A sketch draws a gradient but the rightmost rectangle (i = 9) isn't fully white — it's slightly gray:

```processing
for (int i = 0; i < 10; i++) {
  float gray = map(i, 0, 10, 0, 255);
  fill(gray);
  rect(i * 40, 0, 40, 100);
}
```

Why isn't the last rectangle white?

- a) `map()` doesn't work with `fill()`
- b) The map range goes to 10 but `i` only reaches 9, so the max gray is `map(9, 0, 10, 0, 255)` ≈ 229, not 255
- c) Rectangles can't be white
- d) The loop should start at `i = 1`

---

**9.** What is the value of `x` after this while loop finishes?

```processing
int x = 10;
while (x < 50) {
  x = x + 15;
}
```

- a) 45
- b) 50
- c) 55
- d) 60

---

**10.** A sketch draws concentric circles:

```processing
for (int i = 5; i > 0; i--) {
  fill(map(i, 1, 5, 50, 250));
  circle(200, 200, i * 60);
}
```

What does the user see?

- a) 5 separate circles of different sizes scattered on screen
- b) Concentric circles, lightest (largest) on outside, darkest (smallest) in center
- c) Concentric circles, darkest (largest) on outside, lightest (smallest) in center
- d) Only the smallest circle is visible (it covers the others)

---

## Part 2: Free Response (30 points)

### 11. Trace and Reason (8 points)

Here is a complete sketch on a **400 × 300** canvas:

```processing
void setup() {
  size(400, 300);
}

void draw() {
  background(220);

  int shapes = 0;

  for (int x = 50; x <= 350; x += 100) {
    for (int y = 50; y <= 250; y += 100) {
      if (x == y) {
        fill(255, 0, 0);
      } else {
        fill(200);
      }
      rect(x - 20, y - 20, 40, 40);
      shapes = shapes + 1;
    }
  }

  text("Total: " + shapes, 10, 20);
}
```

**(a)** List all the (x, y) pairs that the nested loops generate. How many total squares are drawn? (3 points)

**(b)** Which squares are red? List their (x, y) positions. Explain why those specific squares are red. (3 points)

**(c)** What text appears in the top-left corner? (2 points)

---

### 12. Debug and Explain (6 points)

A student wants to draw a row of 6 circles that gradually fade from fully opaque to nearly transparent:

```processing
size(400, 200);
background(50);

for (int i = 0; i < 6; i++) {
  fill(255, 255, 255, 255);
  circle(35 + i * 65, 100, 50);
}
```

All 6 circles look identical — fully white and opaque.

**(a)** What is the bug? Why do all circles look the same? (3 points)

**(b)** Fix the code so the first circle (i = 0) is fully opaque (alpha = 255) and the last circle (i = 5) is nearly transparent (alpha ≈ 40). Write the corrected `fill()` line. (3 points)

---

### 13. Complete the Sketch (8 points)

This sketch creates a night sky with stars and a fence. Fill in **Blank A** and **Blank B**.

```processing
int groundY = 300;

void setup() {
  size(600, 400);
}

void draw() {
  background(10, 10, 30);

  // ---- BLANK A (5 pts) ----
  // Use a for loop to draw 30 stars (small circles).
  // Each star's x position: 10 + i * 20
  // Each star's y position: random value between 20 and groundY - 20
  // Each star's size: random value between 2 and 6
  // Each star's brightness: random value between 150 and 255
  // Use the brightness for all three RGB values in fill()
  // Use noStroke()

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________


  // Draw ground
  fill(30, 60, 20);
  noStroke();
  rect(0, groundY, width, height - groundY);

  // ---- BLANK B (3 pts) ----
  // Use a while loop to draw fence posts along the ground.
  // Start at x = 0 and space them 30 pixels apart.
  // Each post is a vertical line from groundY to groundY - 25.
  // Use stroke(80, 50, 30) and strokeWeight(3).
  // Stop when x passes the canvas width.

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

}
```

---

### 14. Design a Solution (8 points)

Write code that creates a **checkerboard pattern** on a 400 × 400 canvas.

Requirements:
- Use nested for loops (one for rows, one for columns)
- Draw an 8 × 8 grid of 50 × 50 squares
- Alternate between two colors of your choice (doesn't have to be black and white)
- The top-left square should be the lighter of the two colors
- Use the modulo operator `%` to determine which color each square gets

Given this starter:

```processing
void setup() {
  size(400, 400);
}

void draw() {
  background(200);

  // YOUR CODE: Draw the checkerboard
  // Hint: if ((row + col) % 2 == 0) → use one color; otherwise use the other




}
```
