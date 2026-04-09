# Unit 4: Arrays & ArrayLists — Practice Quiz

**42 points | 60 minutes**

---

## Part 1: Multiple Choice (20 points — 2 points each)

**1.** What does this code print?

```processing
int[] a = {3, 0, 4, 1, 2};
println(a[a[1]]);
```

- a) 0
- b) 3
- c) 4
- d) 1

---

**2.** What does this code draw on a 400×400 canvas?

```processing
int[] colors = {255, 0, 255, 0, 255};
for (int i = 0; i < colors.length; i++) {
  fill(colors[i]);
  rect(i * 80, 0, 80, 400);
}
```

- a) Five vertical stripes, fading from white to black
- b) Five vertical stripes alternating white and black: white, black, white, black, white
- c) Five vertical stripes, all white
- d) Five vertical stripes, all black

---

**3.** A student writes this code. It runs without crashing, but the last rectangle is missing. Why?

```processing
float[] widths = {50, 80, 30, 60, 40};
float xPos = 0;
for (int i = 0; i < widths.length - 1; i++) {
  rect(xPos, 100, widths[i], 50);
  xPos = xPos + widths[i] + 10;
}
```

- a) The array doesn't have a fifth element
- b) `widths.length - 1` is 4, so the loop stops after `i = 3` — it never reaches index 4
- c) `xPos` goes off the right edge of the screen
- d) The rectangles are drawn on top of each other

---

**4.** What does this code print?

```processing
String[] words = {"cat", "dog", "ant", "bee", "fox"};
String result = "";
for (int i = 0; i < words.length; i++) {
  if (words[i].length() == 3) {
    result = result + words[i];
  }
}
println(result);
```

- a) `"cdabf"`
- b) `"cdf"`
- c) `"catdogantbeefox"`
- d) `"catdogantfox"`

---

**5.** An ArrayList starts as `[100, 200, 300, 400]`. What does it contain after this code runs?

```processing
float last = list.get(list.size() - 1);
list.remove(list.size() - 1);
list.add(0, last);
```

- a) `[400, 100, 200, 300]`
- b) `[100, 200, 300]`
- c) `[100, 200, 300, 400, 400]`
- d) `[300, 100, 200, 400]`

---

**6.** A sketch uses parallel arrays to draw shapes. The user wants to find which circle is at the bottom of the screen (highest y value).

```processing
float[] cx = {80, 250, 160, 350};
float[] cy = {300, 120, 340, 200};
float[] sz = {30, 50, 20, 40};
```

Which circle is lowest on screen, and what is its diameter?

- a) The circle at (80, 300) with diameter 30
- b) The circle at (160, 340) with diameter 20
- c) The circle at (350, 200) with diameter 40
- d) The circle at (250, 120) with diameter 50

---

**7.** An ArrayList contains `[10, 20, 30, 40]`. What does it contain after this code runs?

```processing
list.set(2, list.get(0) + list.get(2));
list.add(list.get(1));
list.remove(0);
```

- a) `[20, 40, 40, 20]`
- b) `[10, 20, 40, 40, 20]`
- c) `[20, 40, 40]`
- d) `[10, 40, 40, 20]`

---

**8.** A student has an ArrayList of y-positions. They want to remove every particle that has fallen below y = 300. They write two versions. Which one correctly removes **all** qualifying particles?

**Version A:**
```processing
for (int i = yPos.size() - 1; i >= 0; i--) {
  if (yPos.get(i) > 300) {
    yPos.remove(i);
  }
}
```

**Version B:**
```processing
for (int i = 0; i < yPos.size(); i++) {
  if (yPos.get(i) > 300) {
    yPos.remove(i);
  }
}
```

- a) Both versions work correctly
- b) Only Version A — Version B may skip particles because removing shifts elements forward
- c) Only Version B — Version A crashes because it starts past the end of the list
- d) Neither version works — you can't remove from an ArrayList inside a loop

---

**9.** What does this code print?

```processing
int[] vals = {4, 7, 2, 9, 1};
for (int i = 0; i < vals.length; i++) {
  vals[i] = vals[i] * 2;
}
println(vals[2] + " " + vals[4]);
```

- a) `"2 1"`
- b) `"4 2"`
- c) `"7 9"`
- d) `"14 18"`

---

**10.** A program uses parallel ArrayLists to draw expanding rings. Each ring has an x, y, and radius. This code runs each frame:

```processing
for (int i = rings_x.size() - 1; i >= 0; i--) {
  float r = rings_r.get(i);
  rings_r.set(i, r + 1.5);

  fill(200, 50);
  circle(rings_x.get(i), rings_y.get(i), r * 2);

  if (r > 120) {
    rings_x.remove(i);
    rings_y.remove(i);
    rings_r.remove(i);
  }
}
```

What do the rings look like as they expand?

- a) They get bigger, then disappear
- b) They get bigger and fade out, then are removed once fully transparent
- c) They shrink, then disappear
- d) They stay the same size but fade out

---

## Part 2: Free Response (22 points)

### 11. Trace and Reason (8 points)

```processing
int[] vals = {4, 1, 7, 2, 5};
int count = 0;
String kept = "";

for (int i = 0; i < vals.length; i++) {
  if (vals[i] >= 4) {
    count = count + 1;
    kept = kept + vals[i] + " ";
  }
}

println(count + " values: " + kept);
```

**(a)** Complete the trace table for each iteration. (4 points)

| Iteration | i | vals[i] | vals[i] >= 4? | count (after) | kept (after) |
|-----------|---|---------|---------------|---------------|--------------|
| 1         | 0 | 4       |               |               |              |
| 2         | 1 | 1       |               |               |              |
| 3         | 2 | 7       |               |               |              |
| 4         | 3 | 2       |               |               |              |
| 5         | 4 | 5       |               |               |              |

**(b)** What gets printed? (2 points)

**(c)** If you changed the condition from `>= 4` to `% 2 == 0` (even numbers only), what would be printed? (2 points)

---

### 12. Debug and Explain (6 points)

A student creates an array of 5 random bar heights in `setup()`. In `draw()`, they want to highlight the tallest bar in red and draw the rest in gray. But the wrong bar is always highlighted — it's always the last bar that turns red, even when it isn't the tallest.

```processing
float[] bars = new float[5];

void setup() {
  size(400, 300);
  for (int i = 0; i < bars.length; i++) {
    bars[i] = random(50, 250);
  }
}

void draw() {
  background(240);

  float tallest = 0;
  for (int i = 0; i < bars.length; i++) {
    if (bars[i] > tallest) {
      tallest = i;
    }
  }

  for (int i = 0; i < bars.length; i++) {
    if (i == tallest) {
      fill(255, 0, 0);
    } else {
      fill(180);
    }
    rect(20 + i * 75, 300 - bars[i], 55, bars[i]);
  }
}
```

**(a)** There is a bug in the first loop. The variable `tallest` is supposed to hold the **index** of the tallest bar. The condition compares `bars[i] > tallest`. Trace through what happens — what value does `tallest` end up with, and why is it always the last bar? (3 points)

**(b)** Write the code you would use to fix this bug

---

### 13. Complete the Sketch (8 points)

This sketch uses ArrayLists to grow circles over time. A new circle appears at the mouse when a key is pressed. Each circle starts small (radius 5) and grows by 1 pixel per frame. When a circle's radius exceeds 80, it is removed. Fill in **Blank A** and **Blank B**.

```processing
ArrayList<Float> gx = new ArrayList<Float>();
ArrayList<Float> gy = new ArrayList<Float>();
ArrayList<Float> gr = new ArrayList<Float>();

void setup() {
  size(500, 400);
  noFill();
}

void draw() {
  background(20);

  // ---- BLANK A (5 pts) ----
  // For each circle:
  //   - Increase its radius by 1
  //   - Draw it using gx, gy, gr (as diameter, multiply radius by 2)
  //   - If its radius exceeds 80, remove it from ALL three ArrayLists

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

void keyPressed() {
  // ---- BLANK B (3 pts) ----
  // Add the mouse position and a starting radius of 5

  _______________________________________________

  _______________________________________________

  _______________________________________________
}
```

---

## Answer Key

### Part 1: Multiple Choice

**1. b)** 3. Work inside-out: `a[1]` is 0. Then `a[0]` is 3. The array value at index 1 is being used as an index itself — you have to evaluate the inner lookup first.

**2. b)** Five vertical stripes alternating white and black. The array `{255, 0, 255, 0, 255}` alternates between 255 (white) and 0 (black). Each value controls the fill of one stripe. The stripes don't fade — they alternate.

**3. b)** The loop condition is `i < widths.length - 1`, which is `i < 4`. So `i` takes values 0, 1, 2, 3 — four iterations. The element at index 4 (width 40) is never used. The fix is `i < widths.length`.

**4. c)** `"catdogaantbeefox"`. Every word in the array has exactly 3 characters, so the condition `words[i].length() == 3` is true every time. So each word is appended. The tricky part is realizing the condition doesn't filter anything — students who assume some words are shorter will get the wrong answer.

**5. a)** `[400, 100, 200, 300]`. The code gets the last element (400), removes it from the end → `[100, 200, 300]`, then inserts it at index 0 → `[400, 100, 200, 300]`. This is a "rotate last to front" pattern.

**6. b)** The circle at (160, 340) with diameter 20. In Processing, higher y values are further down the screen. The cy values are 300, 120, 340, 200. The largest is 340 at index 2. That circle is at x=160, y=340, with size 20.

**7. a)** `[20, 40, 40, 20]`. Trace step by step: Start with `[10, 20, 30, 40]`. `set(2, get(0) + get(2))` computes 10 + 30 = 40 and puts it at index 2 → `[10, 20, 40, 40]`. `add(get(1))` appends the value at index 1 (which is 20) to the end → `[10, 20, 40, 40, 20]`. `remove(0)` removes the 10 and everything shifts down → `[20, 40, 40, 20]`.

**8. b)** Only Version A works correctly. Version A loops backward, so when an element is removed and everything shifts down, the shift only affects indices already visited. Version B loops forward — after removing an element at index `i`, the next element slides into position `i`, but the loop moves to `i + 1`, skipping it.

**9. b)** `"4 2"`. The loop doubles every element: `{4, 7, 2, 9, 1}` becomes `{8, 14, 4, 18, 2}`. Then `vals[2]` is 4 and `vals[4]` is 2. The print shows the modified values, not the originals.

**10. b)** Rings get bigger, then are removed. Each frame the radius grows by 1.5. Once the radius is past 120, the ring is removed from all three lists.

### Part 2: Free Response

**11.**

**(a)** Trace table (4 pts — deduct 1 pt per incorrect row):

| Iteration | i | vals[i] | vals[i] >= 4? | count (after) | kept (after) |
|-----------|---|---------|---------------|---------------|--------------|
| 1         | 0 | 4       | yes           | 1             | `"4 "`       |
| 2         | 1 | 1       | no            | 1             | `"4 "`       |
| 3         | 2 | 7       | yes           | 2             | `"4 7 "`     |
| 4         | 3 | 2       | no            | 2             | `"4 7 "`     |
| 5         | 4 | 5       | yes           | 3             | `"4 7 5 "`   |

**(b)** (2 pts) `3 values: 4 7 5 `

**(c)** (2 pts) Even numbers in `{4, 1, 7, 2, 5}` are 4 and 2. Output: `2 values: 4 2 ` (1 pt for correct count, 1 pt for correct values.)

---

**12.**

**(a)** (3 pts) The condition `bars[i] > tallest` compares a bar's *height* (50–250) against `tallest`, which holds an *index* (0–4). Since every bar height is much larger than any index, the condition is true on every iteration. `tallest` gets overwritten to `i` every time and ends up as 4 — the last index, not necessarily the tallest bar. (1 pt for identifying the comparison mixes height vs index, 1 pt for explaining the condition is always true, 1 pt for noting `tallest` always ends at 4.)

**(b)** 

```processing
int tallest = 0;
for (int i = 1; i < bars.length; i++) {
  if (bars[i] > bars[tallest]) {
    tallest = i;
  }
}
```

The key fix: compare `bars[i] > bars[tallest]` (height vs height), not `bars[i] > tallest` (height vs index). Initialize `tallest = 0` as the index of the first element and start the loop at `i = 1`. (1 pt for correctly  initialization tallest, 1 pt for using `bars[tallest]` in the comparison, 1 pt for correct loop.)

---

**13.**

**Blank A** (5 pts):
```processing
for (int i = gx.size() - 1; i >= 0; i--) {
  gr.set(i, gr.get(i) + 1);
  circle(gx.get(i), gy.get(i), gr.get(i) * 2);
  if (gr.get(i) > 80) {
    gx.remove(i);
    gy.remove(i);
    gr.remove(i);
  }
}
```

Rubric: 1 pt backward loop, 1 pt increasing radius with `.get()` and `.set()`, 1 pt drawing circle with diameter (radius * 2), 1 pt removal condition, 1 pt removing from all three ArrayLists.

**Blank B** (3 pts):
```processing
gx.add(float(mouseX));
gy.add(float(mouseY));
gr.add(5.0);
```

Rubric: 1 pt adding x, 1 pt adding y, 1 pt adding starting radius of 5.
