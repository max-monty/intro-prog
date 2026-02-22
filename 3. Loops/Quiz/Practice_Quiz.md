# Unit 3: Loops/Iteration — Practice Quiz

**50 points | 45 minutes**

---

## Part 1: Multiple Choice (20 points — 2 points each)

**1.** A student wants to print the numbers 1 through 5. They write:

```processing
for (int i = 0; i < 5; i++) {
  println(i);
}
```

What gets printed?

- a) 1, 2, 3, 4, 5
- b) 0, 1, 2, 3, 4
- c) 0, 1, 2, 3, 4, 5
- d) 1, 2, 3, 4

---

**2.** How many circles does this code draw?

```processing
for (int i = 2; i <= 10; i += 2) {
  circle(i * 30, 200, 20);
}
```

- a) 10
- b) 5
- c) 4
- d) 8

---

**3.** A student converts a while loop to a for loop:

```processing
// Original while loop
int x = 100;
while (x <= 400) {
  rect(x, 200, 30, 30);
  x = x + 75;
}

// Their for loop
for (int x = 100; x < 400; x += 75) {
  rect(x, 200, 30, 30);
}
```

Are these equivalent?

- a) Yes, they produce the same result
- b) No — the while loop draws one more rectangle because it uses `<=` while the for uses `<`
- c) No — the for loop draws one more rectangle
- d) No — the while loop has an infinite loop bug

---

**4.** What does the following code produce?

```processing
for (int i = 0; i < 8; i++) {
  if (i % 2 == 0) {
    fill(255);
  } else {
    fill(0);
  }
  rect(i * 50, 100, 48, 48);
}
```

- a) 8 white squares
- b) 8 black squares
- c) Alternating white and black squares (white first)
- d) Alternating black and white squares (black first)

---

**5.** A student writes this code and nothing appears on screen:

```processing
int x = 500;
while (x < 400) {
  circle(x, 200, 30);
  x = x + 50;
}
```

What's wrong?

- a) The circle size is too small to see
- b) The condition `x < 400` is false from the start, so the loop never runs
- c) `x + 50` should be `x - 50`
- d) The while loop has an infinite loop bug

---

**6.** What is the value of `total` after this code runs?

```processing
int total = 0;
for (int i = 1; i <= 4; i++) {
  total = total + i;
}
```

- a) 4
- b) 10
- c) 8
- d) 0

---

**7.** A game draws health pips. What does this code do when `health = 3`?

```processing
int health = 3;
for (int i = 0; i < 5; i++) {
  if (i < health) {
    fill(255, 0, 0);
  } else {
    fill(100);
  }
  circle(20 + i * 30, 20, 20);
}
```

- a) Draws 3 circles (all red)
- b) Draws 5 circles (all red)
- c) Draws 5 circles: 3 red, then 2 gray
- d) Draws 5 circles: 2 red, then 3 gray

---

**8.** Which line causes an infinite loop?

```processing
int y = 0;              // Line 1
while (y < 300) {       // Line 2
  rect(100, y, 50, 10); // Line 3
}                        // Line 4
```

- a) Line 1 — y starts at 0 which is always less than 300
- b) Line 2 — the condition should use `<=`
- c) Line 3 — rect() doesn't change y
- d) The problem is the missing `y = y + 20;` — there is no update, so y stays 0 forever

---

**9.** What does `map(3, 0, 10, 0, 255)` return?

- a) 3
- b) 76.5
- c) 255
- d) 25.5

---

**10.** A student wants to draw a 4x4 grid of circles. Which code does this correctly?

- a)
```processing
for (int i = 0; i < 16; i++) {
  circle(i * 50, i * 50, 30);
}
```

- b)
```processing
for (int row = 0; row < 4; row++) {
  for (int col = 0; col < 4; col++) {
    circle(col * 50, row * 50, 30);
  }
}
```

- c)
```processing
for (int row = 0; row < 4; row++) {
  circle(row * 50, row * 50, 30);
}
```

- d)
```processing
for (int i = 0; i < 4; i++) {
  for (int j = 0; j < 4; j++) {
    circle(i * 50, i * 50, 30);
  }
}
```

---

## Part 2: Free Response (30 points)

### 11. Trace and Reason (8 points)

```processing
int count = 0;
String result = "";

for (int i = 0; i < 5; i++) {
  if (i % 2 == 0) {
    result = result + "X";
    count = count + 1;
  } else {
    result = result + "O";
  }
}

println(result);
println(count);
```

**(a)** Complete the trace table for each iteration. (4 points)

| Iteration | i | i % 2 == 0? | result (after) | count (after) |
|-----------|---|-------------|----------------|---------------|
| 1         | 0 |             |                |               |
| 2         | 1 |             |                |               |
| 3         | 2 |             |                |               |
| 4         | 3 |             |                |               |
| 5         | 4 |             |                |               |

**(b)** What gets printed on each line? (2 points)

**(c)** If you changed `i < 5` to `i < 8`, what would `result` be? (2 points)

---

### 12. Debug and Explain (6 points)

A student wants to draw 10 circles in a row, each with a different shade of gray (from dark on the left to light on the right):

```processing
size(500, 200);
background(240);

for (int i = 0; i < 10; i++) {
  fill(i);
  circle(25 + i * 50, 100, 40);
}
```

All 10 circles look nearly identical — very dark, almost black.

**(a)** Why are all the circles nearly the same shade? What is the range of values `i` takes? (3 points)

**(b)** How would you fix the code so the circles go from dark (near 0) to light (near 255)? Write the corrected `fill()` line. (3 points)

---

### 13. Complete the Sketch (8 points)

This sketch draws a progress bar that fills based on a `progress` variable (0 to 100). Fill in **Blank A** and **Blank B**.

```processing
int progress = 65;
int totalBars = 20;

void setup() {
  size(500, 200);
}

void draw() {
  background(50);

  // ---- BLANK A (5 pts) ----
  // Use a for loop to draw 20 rectangles in a row.
  // Each rectangle is 20 wide and 40 tall, starting at x = 25.
  // Space them 24 pixels apart (20 wide + 4 gap).
  // If the bar's index (0-19) represents a "filled" portion
  // of the progress (i.e., i < progress * totalBars / 100),
  // fill it green (0, 200, 0). Otherwise fill it dark gray (60).

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________


  // ---- BLANK B (3 pts) ----
  // Display the text "Progress: 65%" centered at (250, 150).
  // The number should come from the progress variable,
  // not be hardcoded. Use string concatenation.

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________
}
```

---

### 14. Design a Solution (8 points)

Write code that draws a **row of 12 stars** (circles) across the canvas. Each star should:

- Be positioned using a for loop (evenly spaced across a 600-pixel canvas)
- Have a size that gets larger from left to right (use `map()`)
- Have a brightness that gets lighter from left to right (use `map()` for fill)
- If the star's index is divisible by 3 (use `%`), draw it yellow `(255, 255, 0)` instead of white

Given this starter:

```processing
void setup() {
  size(600, 300);
}

void draw() {
  background(20, 20, 50);

  // YOUR CODE: Draw 12 stars using a for loop
  // - Position: evenly spaced across the canvas
  // - Size: maps from 10 (leftmost) to 40 (rightmost)
  // - Color: maps from gray 80 (leftmost) to 255 (rightmost)
  // - Every 3rd star (i % 3 == 0) is yellow instead




}
```

---

## Answer Key

### Part 1: Multiple Choice

**1. b)** 0, 1, 2, 3, 4. The loop starts at `i = 0` and runs while `i < 5`. The values printed are 0 through 4.

**2. b)** 5 circles. `i` takes values 2, 4, 6, 8, 10. Five iterations.

**3. b)** No — the while loop draws one more rectangle. The while uses `<=` (includes 400) while the for uses `<` (excludes 400). x values in while: 100, 175, 250, 325, 400 → 5 rectangles. For loop: 100, 175, 250, 325 → 4 rectangles.

**4. c)** Alternating white and black squares, white first. `i = 0` is even → white, `i = 1` is odd → black, and so on.

**5. b)** x starts at 500. The condition `500 < 400` is immediately false, so the loop body never executes. Nothing is drawn.

**6. b)** 10. `total = 0 + 1 + 2 + 3 + 4 = 10`. (`i` takes values 1, 2, 3, 4.)

**7. c)** 5 circles: 3 red, then 2 gray. `i = 0, 1, 2` are less than `health` (3) → red. `i = 3, 4` are not → gray.

**8. d)** There is no update to `y` inside the loop. `y` stays 0 forever, and `0 < 300` is always true. The fix is adding `y = y + 20;` inside the while loop body.

**9. b)** 76.5. `map(3, 0, 10, 0, 255)` = 3/10 × 255 = 76.5.

**10. b)** The nested for loop correctly creates a 4×4 grid using `row` for y and `col` for x. Option (a) draws 16 circles on a diagonal. Option (c) draws only 4 circles on a diagonal. Option (d) uses `i` for both x and y, drawing a column repeated 4 times.

### Part 2: Free Response

**11.**

**(a)** Trace table (4 pts — deduct 1 pt per incorrect row):

| Iteration | i | i % 2 == 0? | result (after) | count (after) |
|-----------|---|-------------|----------------|---------------|
| 1         | 0 | true        | "X"            | 1             |
| 2         | 1 | false       | "XO"           | 1             |
| 3         | 2 | true        | "XOX"          | 2             |
| 4         | 3 | false       | "XOXO"         | 2             |
| 5         | 4 | true        | "XOXOX"        | 3             |

**(b)** (2 pts — 1 pt each)
- Line 1: `XOXOX`
- Line 2: `3`

**(c)** (2 pts) `XOXOXOXO` — the pattern continues (X at even indices, O at odd), 8 characters total.

---

**12.**

**(a)** (3 pts) `i` ranges from 0 to 9. `fill(0)` through `fill(9)` are all extremely dark grays — nearly black. The range 0–9 is tiny compared to the 0–255 grayscale range needed for visible differences. (1 pt for identifying i range, 1 pt for explaining why they look the same, 1 pt for mentioning the 0-255 range.)

**(b)** (3 pts) `fill(map(i, 0, 9, 0, 255));`

Also acceptable: `fill(i * 255.0 / 9);` or `fill(i * 28);` (approximately correct).

---

**13.**

**Blank A** (5 pts):
```processing
for (int i = 0; i < totalBars; i++) {
  if (i < progress * totalBars / 100) {
    fill(0, 200, 0);
  } else {
    fill(60);
  }
  noStroke();
  rect(25 + i * 24, 80, 20, 40);
}
```

Rubric: 1 pt correct for loop, 1 pt correct condition, 1 pt correct green fill, 1 pt correct gray fill, 1 pt correct rect positioning.

**Blank B** (3 pts):
```processing
fill(255);
textSize(16);
textAlign(CENTER);
text("Progress: " + progress + "%", 250, 150);
```

Rubric: 1 pt fill/text setup, 1 pt correct string concatenation with variable, 1 pt correct position.

---

**14.** (8 pts)

```processing
for (int i = 0; i < 12; i++) {
  float x = 25 + i * 50;
  float starSize = map(i, 0, 11, 10, 40);

  if (i % 3 == 0) {
    fill(255, 255, 0);
  } else {
    float brightness = map(i, 0, 11, 80, 255);
    fill(brightness);
  }

  noStroke();
  circle(x, 150, starSize);
}
```

Rubric: 2 pts correct for loop structure, 2 pts correct positioning, 1 pt correct size mapping, 1 pt correct brightness mapping, 1 pt correct modulo check for yellow, 1 pt correct circle drawing.
