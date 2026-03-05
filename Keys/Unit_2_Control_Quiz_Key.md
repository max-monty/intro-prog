# Unit 2: Control Structures Quiz — Answer Key

**50 points | 45 minutes**

---

## Part 1: Multiple Choice (20 points — 2 points each)

**1. Answer: b)** The first condition is true for all values 1000 and above, so the chain stops there.

*In an if-else if chain, the first true condition "wins." Since 12000 >= 1000 is true, it assigns "Walker" and skips everything else. The conditions need to be ordered from most specific (highest) to least specific (lowest): 10000, then 5000, then 1000.*

---

**2. Answer: c)** `penDown = false`, `strokes = 3`

*Click 1: toggle false→true, penDown is true → strokes = 1. Click 2: toggle true→false, penDown is false → strokes stays 1. Click 3: toggle false→true → strokes = 2. Click 4: true→false → stays 2. Click 5: false→true → strokes = 3. Click 6: true→false → stays 3. Only odd-numbered clicks put the pen down and increment strokes.*

---

**3. Answer: a)** A: "Heat Warning" — B: "Heat Warning" and "Warm"

*Version A is an else-if chain: 95 > 100 is false, 95 > 85 is true → prints "Heat Warning" and stops. Version B has independent if statements: 95 > 100 false (skip), 95 > 85 true (prints "Heat Warning"), 95 > 70 true (prints "Warm"). Each independent if is checked regardless of the others.*

---

**4. Answer: b)** The outer condition uses `||` instead of `&&`, so it's true for ANY value of mouseX.

*`mouseX >= 150 || mouseX <= 350` is true for every possible value of mouseX — any number is either ≥ 150 or ≤ 350 (or both). This means the outer else never runs, and the button turns green whenever mouseY is in range, regardless of mouseX. The fix: change `||` to `&&` so both x-bounds must be satisfied.*

---

**5. Answer: b)** "chase"

*100 < 50 is false (skip). 100 < 150 is true → returns "chase" and stops. In a function, `return` immediately exits — the else branch is never reached. This is the same principle as an else-if chain: the first true condition determines the result.*

---

**6. Answer: c)** "Bonus level unlocked!" — because `level >= 5` is true and `bossDefeated` is true.

*Evaluate step by step: `level >= 5` is true (5 >= 5). Inside the parentheses: `coins >= 100` is false (80 < 100), but `bossDefeated` is true, so `false || true` = true. Overall: `true && true` = true. The `||` means the player can qualify by EITHER having enough coins OR defeating the boss — they don't need both.*

---

**7. Answer: c)** `HP: 100` then `HP: 45`

*`status` was built when `hp` was 100, creating the string `"HP: 100"`. The subsequent changes to `hp` (100 - 30 = 70, 70 - 25 = 45) don't affect the already-built string. The first println prints the snapshot; the second println builds a NEW string with the current value of `hp` (45).*

---

**8. Answer: a)** `Ticket: $6`

*`isStudent` is false → the else branch runs. Inside: `age` (10) < 12 is true → `price = 6`. The other conditions (>= 65, else) are never checked. The nested structure means the student discount is checked first, and only when that fails does the age-based pricing apply.*

---

**9. Answer: b)** -30

*Each 's' press subtracts 20: 50 → 30 → 10 → -10 → -30. There's an upper bound check (`if brightness > 255`) but no lower bound check. The programmer needs to add `if (brightness < 0) { brightness = 0; }` to prevent negative values.*

---

**10. Answer: a)** A circle that grows from small to large, then stays at its maximum size.

*`diameter` starts at 10 and increases by 2 each frame because `growing` is true. After 95 frames (~1.5 seconds), `diameter` reaches 200, the second condition sets `growing = false`, and `diameter` stops increasing. The circle stays at size 200 permanently.*

---

## Part 2: Free Response (30 points)

### 11. Trace and Reason (8 points)

**(a)** (3 points)

After 3 clicks: `mousePressed()` runs 3 times. Each time, `locked` is false so the condition `!locked` is true, and `count` increments: 0 → 1 → 2 → 3. Then spacebar: `locked` toggles from false to true.

**Variable values:** `count = 3`, `target = 3`, `locked = true`

Since `locked` is true AND `count == target` (3 == 3), the screen shows: **"You win! Count: 3"**

*Grading: 1 pt for correct variable values. 1 pt for identifying the correct branch (locked AND count == target). 1 pt for exact text.*

---

**(b)** (3 points)

The user clicks 2 more times, but `locked` is still true from part (a). The condition `!locked` is false, so `mousePressed()` does nothing — **`count` stays at 3**. Then spacebar: `locked` toggles from true to false.

With `locked = false`, draw shows: **"Count: 3 | Target: 3"**

The key insight: clicking while locked has no effect because the `if (!locked)` guard prevents `count` from changing.

*Grading: 1 pt for recognizing clicks don't work while locked. 1 pt for correct count value (still 3). 1 pt for correct text after unlock.*

---

**(c)** (2 points)

In the `keyPressed()` function, after toggling `locked`, check if it just became unlocked and reset `count`:

```processing
if (key == ' ') {
    locked = !locked;
    if (!locked) {
        count = 0;
    }
}
```

*Grading: 1 pt for correct placement (inside keyPressed, after the toggle). 1 pt for correct logic (reset count to 0 only when unlocking, not when locking).*

---

### 12. Debug and Explain (6 points)

**(a)** (3 points)

The `rect()` call is **outside** the if-else block, so it runs every frame regardless of mouse position. On the left side, the if branch sets fill to blue and rect draws a blue square (correct). On the right side, the else branch draws the red circle, but then `rect()` also draws — using the same red fill — so both shapes appear.

The root cause is that the closing brace of the else block is *before* the `rect()` call, making it always execute.

*Grading: 1 pt for identifying that rect() is outside the if-else. 1 pt for explaining it runs regardless of mouse position. 1 pt for describing the visual result (square appears on both halves).*

---

**(b)** (3 points)

```processing
void draw() {
    background(220);

    if (mouseX < 200) {
        fill(0, 0, 255);
        rect(mouseX, mouseY, 50, 50);
    } else {
        fill(255, 0, 0);
        ellipse(mouseX, mouseY, 50, 50);
    }
}
```

*Grading: 1 pt for moving rect inside the if block. 1 pt for keeping ellipse inside the else block. 1 pt for correct structure (each shape only draws in its respective branch). Accept equivalent correct solutions.*

---

### 13. Complete the Sketch (8 points)

**Blank A** (5 points):

```processing
if (key == 's') {
    shielded = !shielded;
} else if (key == 'h') {
    health = health + 20;
    if (health > maxHealth) {
        health = maxHealth;
    }
} else if (key == 'd') {
    if (shielded) {
        health = health - 5;
    } else {
        health = health - 15;
    }
    if (health < 0) {
        health = 0;
    }
}
```

*Grading:*
- *1 pt for correct if/else if structure checking key values*
- *1 pt for shield toggle (`shielded = !shielded`)*
- *1 pt for healing + cap at maxHealth*
- *1 pt for shield-dependent damage (different amounts for shielded vs. not)*
- *1 pt for health floor at 0*

*Accept `health = max(health, 0)` or equivalent. Accept separate if statements instead of else-if for key checks. Accept `shielded == true` in the inner condition.*

---

**Blank B** (3 points):

```processing
health = maxHealth;
shielded = false;
```

*Grading:*
- *1 pt for resetting health to maxHealth (not hardcoded 100)*
- *1 pt for setting shielded to false*
- *1 pt for both values being correct and placed inside mousePressed()*

---

### 14. Design a Solution (8 points)

**In `draw()`** (3 points):

```processing
if (heaterOn) {
    background(200, 100, 80);
} else if (acOn) {
    background(80, 100, 200);
} else {
    background(180);
}
```

*Grading:*
- *1 pt for checking heaterOn*
- *1 pt for checking acOn*
- *1 pt for all three background colors correct (accept approximate values)*

---

**In `keyPressed()`** (5 points):

```processing
if (key == 'u') {
    temperature = temperature + 2;
} else if (key == 'd') {
    temperature = temperature - 2;
}

if (temperature < 65) {
    heaterOn = true;
    acOn = false;
} else if (temperature > 75) {
    acOn = true;
    heaterOn = false;
} else {
    heaterOn = false;
    acOn = false;
}
```

*Grading:*
- *1 pt for correct key checks ('u' and 'd') with proper structure*
- *1 pt for correct temperature changes (+2 and -2)*
- *1 pt for heater logic (temp < 65 → heater on, AC off)*
- *1 pt for AC logic (temp > 75 → AC on, heater off)*
- *1 pt for neutral range logic (65–75 → both off)*

*Note: The temperature update and the thermostat logic must be separate blocks (not connected by else-if), since the thermostat check should happen after the temperature changes. Accept equivalent correct implementations — e.g., separate if statements for each appliance, or different boundary values if consistently applied.*
