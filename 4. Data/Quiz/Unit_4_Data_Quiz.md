# Unit 4: Arrays & ArrayLists — Quiz

**42 points | 60 minutes**

---

## Part 1: Multiple Choice (20 points — 2 points each)

**1.** What does this code print?

```processing
int[] vals = {10, 20, 30, 40, 50};
println(vals[1] + vals[3]);
```

- a) 30
- b) 50
- c) 60
- d) 70

---

**2.** What does this code draw?

```processing
float[] sizes = {40, 10, 30, 20};
for (int i = 0; i < sizes.length; i++) {
  circle(50 + i * 60, 200, sizes[i]);
}
```

- a) Four circles, getting larger from left to right
- b) Four circles, getting smaller from left to right
- c) Four circles: large, small, medium, small (matching the array order)
- d) One circle with diameter 40

---

**3.** A student runs this code and the sketch crashes. Why?

```processing
int[] scores = {88, 92, 75, 100, 63};
for (int i = 0; i <= scores.length; i++) {
  println(scores[i]);
}
```

- a) The array has no element at index 0
- b) `println` can't print integers from an array
- c) The loop runs 6 times, but the last iteration accesses `scores[5]`, which doesn't exist
- d) The array should use `float` instead of `int`

---

**4.** What does this code print?

```processing
int[] a = {5, 12, 3, 8, 20, 7};
int result = a[0];
for (int i = 1; i < a.length; i++) {
  if (a[i] < result) {
    result = a[i];
  }
}
println(result);
```

- a) 5
- b) 3
- c) 20
- d) 7

---

**5.** An ArrayList starts as `[10, 20, 30]`. What does it contain after this code runs?

```processing
list.add(40);
list.set(0, list.get(0) + list.get(1));
list.remove(1);
```

- a) `[30, 30, 40]`
- b) `[10, 30, 40]`
- c) `[30, 40]`
- d) `[30, 30]`

---

**6.** A sketch uses two parallel arrays to draw shapes:

```processing
float[] x = {50, 150, 250};
float[] y = {100, 200, 100};
float[] sz = {40, 20, 60};

for (int i = 0; i < x.length; i++) {
  circle(x[i], y[i], sz[i]);
}
```

What does the third circle look like compared to the first?

- a) Same position, bigger
- b) Further right and lower, smaller
- c) Further right, same height, bigger
- d) Further right, same height, smaller

---

**7.** An ArrayList contains `[10, 20, 30, 40, 50]`. What does it contain after this code runs?

```processing
list.remove(1);
list.remove(1);
```

- a) `[10, 40, 50]`
- b) `[10, 30, 50]`
- c) `[30, 40, 50]`
- d) `[10, 20, 50]`

---

**8.** An ArrayList contains `["A", "B", "C", "D", "E"]`. A student loops **forward** and removes every element where the index is even:

```processing
for (int i = 0; i < list.size(); i++) {
  if (i % 2 == 0) {
    list.remove(i);
  }
}
```

What does the list contain when the loop finishes?

- a) `["B", "D"]`
- b) `["B", "C", "D", "E"]`
- c) `["B", "C", "E"]`
- d) The list is empty — all elements are removed

---

**9.** What does this code print?

```processing
int[] nums = {10, 20, 30, 40, 50};
int total = 0;
for (int i = 0; i < nums.length; i++) {
  total = total + nums[i];
}
println(total);
```

- a) 50
- b) 5
- c) 150
- d) 15

---

**10.** A program uses parallel ArrayLists for bouncing balls. Each ball has an x, y, and ySpeed. This code runs each frame:

```processing
for (int i = 0; i < x.size(); i++) {
  ySpeed.set(i, ySpeed.get(i) + 0.5);
  y.set(i, y.get(i) + ySpeed.get(i));

  if (y.get(i) > 400) {
    y.set(i, 400.0);
    ySpeed.set(i, ySpeed.get(i) * -0.9);
  }

  circle(x.get(i), y.get(i), 20);
}
```

What behavior does the `if` block create?

- a) Balls disappear when they reach y = 400
- b) Balls stop and freeze at y = 400
- c) Balls bounce off y = 400 and gradually lose height with each bounce
- d) Balls bounce off y = 400 and go higher each time

---

## Part 2: Free Response (22 points)

### 11. Trace and Reason (8 points)

```processing
int[] vals = {3, 8, 1, 6, 4};
int maxVal = vals[0];
int maxIndex = 0;

for (int i = 1; i < vals.length; i++) {
  if (vals[i] > maxVal) {
    maxVal = vals[i];
    maxIndex = i;
  }
}

println("Max: " + maxVal + " at index " + maxIndex);
```

**(a)** Complete the trace table for each iteration. (4 points)

| Iteration | i | vals[i] | vals[i] > maxVal? | maxVal (after) | maxIndex (after) |
|-----------|---|---------|-------------------|----------------|------------------|
| 1         | 1 | 8       |                   |                |                  |
| 2         | 2 | 1       |                   |                |                  |
| 3         | 3 | 6       |                   |                |                  |
| 4         | 4 | 4       |                   |                |                  |

**(b)** What gets printed? (2 points)

**(c)** If you changed `vals[1]` from 8 to 2, what would the output be? (2 points)

---

### 12. Debug and Explain (6 points)

A student wants to create a mouse trail using an array. Each frame, the trail should shift and the newest position should go at index 0. But the trail doesn't work — all dots appear at the same spot.

```processing
float[] trailX = new float[10];
float[] trailY = new float[10];

void setup() {
  size(400, 400);
}

void draw() {
  background(0);

  for (int i = 0; i < trailX.length; i++) {
    trailX[i] = mouseX;
    trailY[i] = mouseY;
  }

  for (int i = 0; i < trailX.length; i++) {
    circle(trailX[i], trailY[i], 15);
  }
}
```

**(a)** Why do all the dots appear at the same position? What is the loop doing wrong? (3 points)

**(b)** Rewrite the first loop in `draw()` so it correctly shifts old positions backward and stores the new mouse position at index 0. (3 points)

---

### 13. Complete the Sketch (8 points)

This sketch uses ArrayLists to spawn circles when the mouse is clicked. Circles fall downward and are removed when they go off the bottom of the screen. Fill in **Blank A** and **Blank B**.

```processing
ArrayList<Float> cx = new ArrayList<Float>();
ArrayList<Float> cy = new ArrayList<Float>();
ArrayList<Float> cSize = new ArrayList<Float>();

void setup() {
  size(500, 400);
}

void draw() {
  background(30);

  // ---- BLANK A (5 pts) ----
  // For each circle:
  //   - Move it down the screen by 2 pixels
  //   - Draw it using cx, cy, cSize
  //   - Once a circle moves past the bottom of the screen, remove it from ALL three ArrayLists

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________
}

void mousePressed() {
  // ---- BLANK B (3 pts) ----
  // Add the mouse position and a random size (10-50) to the ArrayLists

  _______________________________________________

  _______________________________________________

  _______________________________________________
}
```


---

## Answer Key

### Part 1: Multiple Choice

**1. c)** 60. `vals[1]` is 20 and `vals[3]` is 40 (zero-indexed: index 0=10, 1=20, 2=30, 3=40, 4=50). 20 + 40 = 60.

**2. c)** Four circles whose sizes match the array order: 40, 10, 30, 20. The loop draws them left to right, but the sizes come from the array — they don't automatically sort or grow. You have to read the array values to know the sizes.

**3. c)** The loop condition `i <= scores.length` lets `i` reach 5. But `scores[5]` doesn't exist — the valid indices are 0 through 4 (five elements). The loop runs one too many times. The fix is `i < scores.length`.

**4. b)** 3. This is a minimum-finding algorithm. `result` starts at 5. The loop checks each element: 12 > 5 (no change), 3 < 5 (result becomes 3), 8 > 3 (no), 20 > 3 (no), 7 > 3 (no). The smallest value is 3.

**5. a)** `[30, 30, 40]`. Trace it step by step: Start with `[10, 20, 30]`. After `add(40)` → `[10, 20, 30, 40]`. Then `set(0, get(0) + get(1))` computes 10 + 20 = 30 and puts it at index 0 → `[30, 20, 30, 40]`. Finally `remove(1)` removes the 20 and everything shifts down → `[30, 30, 40]`.

**6. c)** Further right, same height, bigger. The third circle (index 2) is at x=250, y=100 with size 60. The first circle (index 0) is at x=50, y=100 with size 40. They share the same y-value (100) but the third is 200 pixels further right and has a larger diameter.

**7. a)** `[10, 40, 50]`. First `remove(1)` removes the 20 → `[10, 30, 40, 50]`. Now 30 has shifted into index 1. Second `remove(1)` removes the 30 → `[10, 40, 50]`. The key insight is that after the first removal, everything shifts down, so the second removal targets a different element than you might expect.

**8. c)** `["B", "D", "E"]`. Trace it: i=0 is even, remove "A" → list becomes `["B", "C", "D", "E"]`. i=1, 1 is odd, skip. i=2 is even, remove "D" → `["B", "C", "E"]`. i=3, but size is now 3, loop ends. "C" was never checked because it slid into index 1 (which was already visited). The forward loop skips elements after each removal.

**9. c)** 150. The loop visits every element and adds it to `total`: 0 + 10 = 10, 10 + 20 = 30, 30 + 30 = 60, 60 + 40 = 100, 100 + 50 = 150. This is the accumulator pattern applied to an array.

**10. c)** Balls bounce off y = 400 and gradually lose height. The `+ 0.5` adds gravity (increasing downward speed each frame). When a ball passes y = 400, it's placed back at 400 and its speed is reversed (`*-0.9`). The `0.9` means it keeps only 90% of its speed after each bounce, so each bounce is lower than the last — just like a real ball losing energy.

### Part 2: Free Response

**11.**

**(a)** Trace table (4 pts — deduct 1 pt per incorrect row):

| Iteration | i | vals[i] | vals[i] > maxVal? | maxVal (after) | maxIndex (after) |
|-----------|---|---------|-------------------|----------------|------------------|
| 1         | 1 | 8       | yes (8 > 3)       | 8              | 1                |
| 2         | 2 | 1       | no (1 > 8)        | 8              | 1                |
| 3         | 3 | 6       | no (6 > 8)        | 8              | 1                |
| 4         | 4 | 4       | no (4 > 8)        | 8              | 1                |

**(b)** (2 pts) `Max: 8 at index 1`

**(c)** (2 pts) `Max: 6 at index 3`. With `vals = {3, 2, 1, 6, 4}`, the largest value is 6 at index 3.

---

**12.**

**(a)** (3 pts) The loop sets *every* element to `mouseX`/`mouseY` on every frame. There is no shifting — it overwrites the entire array with the current mouse position. So all 10 dots are at the same spot. (1 pt for identifying the overwrite, 1 pt for explaining no shifting occurs, 1 pt for noting all elements become the same value.)

**(b)** (3 pts)
```processing
for (int i = trailX.length - 1; i > 0; i--) {
  trailX[i] = trailX[i - 1];
  trailY[i] = trailY[i - 1];
}
trailX[0] = mouseX;
trailY[0] = mouseY;
```

Rubric: 1 pt backward loop structure, 1 pt correct shifting of both arrays, 1 pt storing mouseX/mouseY at index 0.

---

**13.**

**Blank A** (5 pts):
```processing
for (int i = cx.size() - 1; i >= 0; i--) {
  cy.set(i, cy.get(i) + 2);
  circle(cx.get(i), cy.get(i), cSize.get(i));
  if (cy.get(i) > height) {
    cx.remove(i);
    cy.remove(i);
    cSize.remove(i);
  }
}
```

Rubric: 1 pt backward loop, 1 pt updating y position with `.get()` and `.set()`, 1 pt drawing circle, 1 pt removal condition, 1 pt removing from all three ArrayLists.

**Blank B** (3 pts):
```processing
cx.add(float(mouseX));
cy.add(float(mouseY));
cSize.add(random(10, 50));
```

Rubric: 1 pt adding x, 1 pt adding y, 1 pt adding random size in correct range.
