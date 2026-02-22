# Unit 3: Loops/Iteration Quiz — Answer Key

**50 points | 45 minutes**

---

## Part 1: Multiple Choice (20 points — 2 points each)

**1. b)** The loop starts at `i = 1`, so the first x-position is `1 * 50 = 50`, not 0. To start at x = 0, the student should use `i = 0` or change the position formula to `(i - 1) * 50`.

**2. c)** 4 splatters. `i` takes values 0, 2, 4, 6 (stepping by 2). That's 4 iterations.

**3. b)** Version B is missing `i = i + 1` inside the while loop. Without an update, `i` stays 0 forever and the condition `0 < 5` is always true — infinite loop.

**4. b)** Dots get progressively brighter. `map(i, 0, 11, 50, 255)` produces increasing brightness as `i` goes from 0 to 11. The first dot is dark (50), the last is bright (255).

**5. c)** 80 shapes. Nested loops multiply: 8 × 10 = 80 total iterations.

**6. c)** 4 red rectangles. `i % 4 == 0` is true when `i` = 0, 4, 8, 12. That's 4 out of 16.

**7. b)** `Star 1 Star 2 Star 3 `. Each iteration appends `"Star "`, then `i`, then `" "`. The concatenation builds up across all 3 iterations, producing the full string with spaces.

**8. b)** The map range goes from 0 to 10, but `i` only reaches 9 (since the condition is `i < 10`). So the maximum gray value is `map(9, 0, 10, 0, 255)` ≈ 229.5, not 255. Fix: change to `map(i, 0, 9, 0, 255)`.

**9. c)** 55. Trace: x = 10 → 25 → 40 → 55. At x = 55, the condition `55 < 50` is false, so the loop stops. Final value: 55.

**10. b)** Concentric circles, lightest on outside, darkest in center. The loop starts at `i = 5` (largest circle, brightest fill: `map(5, 1, 5, 50, 250)` = 250) and works inward. Each smaller circle is drawn on top with a darker fill. The innermost circle (`i = 1`) has fill 50 (dark).

---

## Part 2: Free Response (30 points)

### 11. Trace and Reason (8 points)

**(a)** (3 points)

x values: 50, 150, 250, 350 (4 values)
y values: 50, 150, 250 (3 values)

All (x, y) pairs:
| | y=50 | y=150 | y=250 |
|---|------|-------|-------|
| x=50 | (50,50) | (50,150) | (50,250) |
| x=150 | (150,50) | (150,150) | (150,250) |
| x=250 | (250,50) | (250,150) | (250,250) |
| x=350 | (350,50) | (350,150) | (350,250) |

Total: 4 × 3 = **12 squares**.

Rubric: 1 pt for correct x values, 1 pt for correct y values, 1 pt for correct total count.

**(b)** (3 points)

Red squares are where `x == y`:
- **(50, 50)** — both equal 50
- **(150, 150)** — both equal 150
- **(250, 250)** — both equal 250

Note: (350, 350) does NOT exist because y only goes up to 250. There are **3 red squares**.

Rubric: 1 pt for listing the 3 correct positions, 1 pt for explaining the `x == y` condition, 1 pt for noting (350,350) doesn't exist (or simply not listing it).

**(c)** (2 points)

`Total: 12`

Rubric: 1 pt for "Total:" text, 1 pt for correct number 12.

---

### 12. Debug and Explain (6 points)

**(a)** (3 points)

The bug is that the alpha parameter in `fill(255, 255, 255, 255)` is hardcoded to 255. The loop variable `i` is not used anywhere in the `fill()` call. Every circle gets the same fill — fully opaque white — regardless of its position in the loop.

Rubric: 1 pt for identifying hardcoded alpha, 1 pt for noting `i` is not used, 1 pt for explaining all circles get the same appearance.

**(b)** (3 points)

```processing
fill(255, 255, 255, map(i, 0, 5, 255, 40));
```

Also acceptable:
- `fill(255, 255, 255, 255 - i * 43);`
- Any formula that produces alpha ≈ 255 when i = 0 and alpha ≈ 40 when i = 5.

Rubric: 1 pt for using `i` in the alpha parameter, 1 pt for correct range (255 down to ~40), 1 pt for correct syntax.

---

### 13. Complete the Sketch (8 points)

**Blank A** (5 points):

```processing
noStroke();
for (int i = 0; i < 30; i++) {
  float brightness = random(150, 255);
  fill(brightness, brightness, brightness);
  circle(10 + i * 20, random(20, groundY - 20), random(2, 6));
}
```

Rubric:
- 1 pt: correct for loop (0 to 29)
- 1 pt: correct x position (`10 + i * 20`)
- 1 pt: random y position in correct range
- 1 pt: random size in correct range
- 1 pt: brightness used for fill RGB values

Also acceptable: `fill(brightness)` instead of `fill(brightness, brightness, brightness)`.

**Blank B** (3 points):

```processing
stroke(80, 50, 30);
strokeWeight(3);
int x = 0;
while (x <= width) {
  line(x, groundY, x, groundY - 25);
  x = x + 30;
}
```

Rubric:
- 1 pt: correct stroke settings
- 1 pt: correct while loop with update
- 1 pt: correct line drawing from groundY to groundY - 25

---

### 14. Design a Solution (8 points)

```processing
noStroke();
for (int row = 0; row < 8; row++) {
  for (int col = 0; col < 8; col++) {
    if ((row + col) % 2 == 0) {
      fill(240, 217, 181);  // Light color
    } else {
      fill(181, 136, 99);   // Dark color
    }
    rect(col * 50, row * 50, 50, 50);
  }
}
```

Rubric:
- 2 pts: correct nested for loop structure (outer for rows, inner for columns)
- 1 pt: loops go from 0 to 7 (8 iterations each)
- 1 pt: correct modulo check `(row + col) % 2`
- 1 pt: two different fill colors
- 1 pt: lighter color when condition is true (top-left square)
- 1 pt: correct rect positioning (`col * 50, row * 50`)
- 1 pt: correct rect size (50 × 50)

Any two colors are acceptable as long as the lighter one is used for the top-left square (where row + col = 0, which is even).
