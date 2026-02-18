# Unit 2: Control — Practice Quiz

## Part 1: Multiple Choice (20 points — 2 points each)

**1.** A music app assigns playlist tiers based on play count:

```processing
int plays = 150;
String tier;

if (plays >= 50) {
    tier = "Rising";
} else if (plays >= 100) {
    tier = "Popular";
} else if (plays >= 200) {
    tier = "Viral";
} else {
    tier = "New";
}
println(tier);
```

A song with 150 plays gets "Rising" instead of "Popular." What explains this?

- a) String variables can't be reassigned after being set
- b) The first condition (`>= 50`) is true for any plays 50 or above, so the chain stops there
- c) The `>=` operator doesn't work with `else if`
- d) There needs to be an `else` block that handles ties

---

**2.** A camera app tracks recording sessions:

```processing
boolean recording = false;
int takes = 0;

void mousePressed() {
    recording = !recording;
    if (recording) {
        takes = takes + 1;
    }
}
```

The user clicks **4 times**. What are the values of `recording` and `takes`?

- a) `recording = true`, `takes = 4`
- b) `recording = false`, `takes = 4`
- c) `recording = false`, `takes = 2`
- d) `recording = true`, `takes = 2`

---

**3.** A game assigns achievement badges. A student writes two versions for `score = 85`:

```processing
// Version A
if (score >= 90) {
    println("Gold");
} else if (score >= 80) {
    println("Silver");
} else if (score >= 70) {
    println("Bronze");
}

// Version B
if (score >= 90) {
    println("Gold");
}
if (score >= 80) {
    println("Silver");
}
if (score >= 70) {
    println("Bronze");
}
```

What does each version print?

- a) A prints "Silver" — B prints "Silver" and "Bronze"
- b) A prints "Silver" — B prints "Silver"
- c) A prints "Gold", "Silver", "Bronze" — B prints "Silver" and "Bronze"
- d) A prints "Silver" — B prints "Gold", "Silver", and "Bronze"

---

**4.** A student writes code to turn a button red when the mouse hovers over it. The button goes from (100, 150) to (300, 250):

```processing
void draw() {
    background(200);

    if (mouseX > 100 && mouseX < 300) {
        fill(255, 0, 0);
    } else if (mouseY > 150 && mouseY < 250) {
        fill(200);
    } else {
        fill(200);
    }
    rect(100, 150, 200, 100);
}
```

The button turns red whenever the mouse is in the correct x-range, even if the mouse is far above or below the button. What's the root cause?

- a) The `rect()` is drawn outside the if statement
- b) The x-check and y-check need to be combined with `&&` in a single condition, not separated into an else-if chain
- c) The `fill()` color needs to be set after the `rect()` call
- d) The conditions should use `>=` and `<=` instead of `>` and `<`

---

**5.** A restaurant app uses this function:

```processing
float calculateTip(float bill, boolean goodService) {
    if (goodService) {
        return bill * 0.20;
    } else {
        return bill * 0.15;
    }
}
```

What does `calculateTip(50.0, true)` return?

- a) 7.5
- b) 10.0
- c) 17.5
- d) 50.0

---

**6.** A theme park checks ride requirements:

```processing
int height = 48;
int age = 10;
boolean hasParent = true;

if (height >= 52 || (age >= 8 && hasParent)) {
    println("Ride approved");
} else {
    println("Cannot ride");
}
```

What gets printed?

- a) "Ride approved" — because `height >= 52` is true
- b) "Cannot ride" — because `height < 52`
- c) "Ride approved" — because `age >= 8` AND `hasParent` is true
- d) "Cannot ride" — because not all three conditions are true

---

**7.** A game tracks the player's score:

```processing
int score = 0;
String display = "Score: " + score;
score = score + 100;
score = score + 50;
println(display);
```

What gets printed?

- a) `Score: 150`
- b) `Score: 100`
- c) `Score: 0`
- d) An error because `score` changed after the string was built

---

**8.** A shipping calculator uses nested conditionals:

```processing
boolean isPremium = true;
float weight = 3.5;

float cost;
if (isPremium) {
    if (weight > 5) {
        cost = 10.0;
    } else {
        cost = 5.0;
    }
} else {
    if (weight > 5) {
        cost = 20.0;
    } else {
        cost = 12.0;
    }
}
println(cost);
```

What gets printed?

- a) `5.0`
- b) `10.0`
- c) `12.0`
- d) `20.0`

---

**9.** A media player has volume controls:

```processing
int volume = 50;

void keyPressed() {
    if (key == 'u') {
        volume = volume + 10;
    } else if (key == 'd') {
        volume = volume - 10;
    }

    if (volume > 100) {
        volume = 100;
    }
}
```

Starting from `volume = 50`, the user presses 'd' six times. What is the value of `volume`?

- a) 0
- b) -10
- c) 10
- d) An error because volume can't be negative

---

**10.** A sketch fades the screen from white to black:

```processing
int brightness = 255;
boolean fading = true;

void setup() {
    size(400, 400);
}

void draw() {
    background(brightness);

    if (fading) {
        brightness = brightness - 1;
    }

    if (brightness <= 0) {
        fading = false;
    }
}
```

What does the user see when they run this sketch?

- a) The screen starts white and gradually fades to black, then stays black
- b) The screen starts white, fades to black, then fades back to white repeatedly
- c) The screen is always black
- d) The screen flickers between white and black

---

## Part 2: Free Response (30 points)

### 11. Trace and Reason (8 points)

Here is a complete sketch for a virtual pet on a **400 × 400** canvas:

```processing
int hunger = 3;
boolean sleeping = false;

void setup() {
    size(400, 400);
}

void draw() {
    background(200);
    fill(0);

    if (sleeping) {
        text("Zzz...", 200, 200);
    } else {
        if (hunger >= 5) {
            text("Hungry! (hunger: " + hunger + ")", 10, 20);
        } else if (hunger >= 3) {
            text("Okay (hunger: " + hunger + ")", 10, 20);
        } else {
            text("Happy (hunger: " + hunger + ")", 10, 20);
        }
    }
}

void mousePressed() {
    if (sleeping) {
        sleeping = false;
        hunger = hunger + 1;
    } else {
        sleeping = true;
    }
}

void keyPressed() {
    if (!sleeping) {
        hunger = hunger - 1;
        if (hunger < 0) {
            hunger = 0;
        }
    }
}
```

**(a)** The sketch just started (no user interaction). What text appears on screen? Explain your reasoning. (2 points)

&nbsp;

&nbsp;

&nbsp;

**(b)** Starting fresh, the user performs these actions in order: **click, click, press a key, press a key**. Complete the table showing how the state changes after each action. (4 points)

| Action | `sleeping` | `hunger` | Why? |
|--------|------------|----------|------|
| Start  | `false`    | `3`      | Initial values |
| Click 1 |           |          |      |
| Click 2 |           |          |      |
| Key 1  |            |          |      |
| Key 2  |            |          |      |

**(c)** After all four actions in part (b), what text appears on screen? (2 points)

&nbsp;

&nbsp;

&nbsp;

---

### 12. Debug and Explain (6 points)

A student builds a nightlight. It should:
- Show a yellow circle on a dark background when the light is "on"
- Show just a dark background when the light is "off"
- Toggle between on/off when the user clicks

```processing
boolean lightOn = false;

void setup() {
    size(400, 400);
}

void draw() {
    if (lightOn) {
        background(20);
        fill(255, 255, 0);
        ellipse(200, 200, 100, 100);
    }
}

void mousePressed() {
    lightOn = !lightOn;
}
```

The toggle works to turn the light ON, but when the user clicks again to turn it OFF, the yellow circle stays on screen.

**(a)** What is the bug? Why does the circle stay visible even when `lightOn` is false? (3 points)

&nbsp;

&nbsp;

&nbsp;

**(b)** How would you fix it? Describe or write the corrected code. (3 points)

&nbsp;

&nbsp;

&nbsp;

---

### 13. Complete the Sketch (8 points)

This sketch lets the user mix a background color by pressing keys. Fill in **Blank A** and **Blank B** to make it work.

```processing
int r = 0;
int g = 0;
int b = 0;
String lastAction = "None";

void setup() {
    size(400, 400);
}

void draw() {
    background(r, g, b);
    fill(255);
    text("Color: (" + r + ", " + g + ", " + b + ")", 10, 20);
    text("Last: " + lastAction, 10, 40);
}

void keyPressed() {

    // ---- BLANK A (5 pts) ----
    // When 'r' is pressed, increase r by 25
    // When 'g' is pressed, increase g by 25
    // When 'b' is pressed, increase b by 25
    // When ' ' (space) is pressed, reset r, g, and b to 0
    // For each case, set lastAction to the color name
    //   ("Red", "Green", "Blue", or "Reset")

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

    _______________________________________________

    _______________________________________________

    _______________________________________________

    _______________________________________________


    // ---- BLANK B (3 pts) ----
    // After any change above, make sure r, g, and b
    // each never go above 255. If any value is greater
    // than 255, set it to 255.

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
```

---

### 14. Design a Solution (8 points)

Write the conditional logic for a **traffic light simulator**. The program uses an integer variable `state` where: 0 = red, 1 = green, 2 = yellow.

Each time the user **clicks**:
- Red (0) should change to green (1)
- Green (1) should change to yellow (2)
- Yellow (2) should change back to red (0)

The correct colored circle should be drawn at (200, 200) with size 100.

Given this starter code, fill in both `draw()` and `mousePressed()`:

```processing
int state = 0;  // 0 = red, 1 = green, 2 = yellow

void setup() {
    size(400, 400);
}

void draw() {
    background(50);

    // YOUR CODE: Set the fill color based on the current state
    //   state 0 → fill(255, 0, 0)     (red)
    //   state 1 → fill(0, 255, 0)     (green)
    //   state 2 → fill(255, 255, 0)   (yellow)




    ellipse(200, 200, 100, 100);
}

void mousePressed() {
    // YOUR CODE: Cycle to the next state




}
```

---
---

## Answer Key

### Part 1: Multiple Choice

**1. b)** The first condition (`>= 50`) is true for any plays 50 or above, so the chain stops there.

*In an if-else if chain, the first true condition "wins." Since 150 >= 50 is true, it assigns "Rising" and skips everything else. The conditions need to be ordered from most specific (highest) to least specific (lowest).*

**2. c)** `recording = false`, `takes = 2`

*Click 1: toggle false→true, recording is true so takes = 1. Click 2: toggle true→false, recording is false so takes stays 1. Click 3: toggle false→true, takes = 2. Click 4: toggle true→false, takes stays 2. Only odd-numbered clicks start a recording and increment takes.*

**3. a)** A prints "Silver" — B prints "Silver" and "Bronze"

*Version A is an else-if chain: 85 >= 90 is false, 85 >= 80 is true → prints "Silver" and stops. Version B has independent if statements: 85 >= 90 is false (skip), 85 >= 80 is true (prints "Silver"), 85 >= 70 is true (prints "Bronze"). Independent ifs each run on their own.*

**4. b)** The x-check and y-check need to be combined with `&&` in a single condition, not separated into an else-if chain.

*Because the x-check and y-check are in an else-if chain, only one runs. When mouseX is in range, the x-check is true and fill turns red — the y-check in the else-if is never evaluated. The fix: `if (mouseX > 100 && mouseX < 300 && mouseY > 150 && mouseY < 250)`.*

**5. b)** 10.0

*`goodService` is true, so the function runs `bill * 0.20` = `50.0 * 0.20` = `10.0`. The else branch (0.15) is skipped. The function returns just one value because the if-else ensures only one branch runs.*

**6. c)** "Ride approved" — because `age >= 8` AND `hasParent` is true

*`height >= 52` is false (48 < 52). But the right side of the `||` is checked: `age >= 8` (10 >= 8, true) `&&` `hasParent` (true) → true. Since `false || true` is true, the ride is approved. The `||` means either path can unlock access.*

**7. c)** `Score: 0`

*The string `display` was built when `score` was 0, so it became `"Score: 0"`. Changing `score` to 150 afterward has no effect on the already-built string. Strings capture a snapshot of values at the moment they're created.*

**8. a)** `5.0`

*`isPremium` is true → enter the first branch. Inside: `weight` (3.5) > 5 is false → else → `cost = 5.0`. The outer else (non-premium pricing) is skipped entirely. Nested conditionals are evaluated from the outside in.*

**9. b)** -10

*Each 'd' press subtracts 10: 50 → 40 → 30 → 20 → 10 → 0 → -10. There's an upper bound check (`if volume > 100`) but no lower bound check. The programmer forgot to add `if (volume < 0) { volume = 0; }`.*

**10. a)** The screen starts white and gradually fades to black, then stays black.

*`brightness` starts at 255 (white) and decreases by 1 each frame because `fading` is true. After 255 frames (~4 seconds), `brightness` reaches 0 (black) and the second condition sets `fading = false`. With `fading` false, `brightness` stops changing and the screen stays black.*

---

### Part 2: Free Response

**11. Trace and Reason (8 points)**

**(a)** (2 points)

The text `"Okay (hunger: 3)"` appears. `sleeping` is `false`, so the else branch runs. `hunger` is 3: `3 >= 5` is false, `3 >= 3` is true → the "Okay" message displays.

**(b)** (4 points)

| Action | `sleeping` | `hunger` | Why? |
|--------|------------|----------|------|
| Start  | `false`    | `3`      | Initial values |
| Click 1 | `true`    | `3`      | `sleeping` was false → set `sleeping = true` |
| Click 2 | `false`   | `4`      | `sleeping` was true → set `sleeping = false`, `hunger + 1 = 4` |
| Key 1  | `false`    | `3`      | Not sleeping → `hunger - 1 = 3`. `3 < 0`? No. |
| Key 2  | `false`    | `2`      | Not sleeping → `hunger - 1 = 2`. `2 < 0`? No. |

**(c)** (2 points)

The text `"Happy (hunger: 2)"` appears. `sleeping` is false, so the else branch runs. `hunger` is 2: `2 >= 5` is false, `2 >= 3` is false → the else ("Happy") message displays with hunger 2.

---

**12. Debug and Explain (6 points)**

**(a)** (3 points)

When `lightOn` is false, the entire if block is skipped — nothing runs in `draw()`. Since `background()` is inside the if block, the screen is never cleared. The yellow circle from the previous frame stays visible because nothing overwrites it.

**(b)** (3 points)

Move `background(20)` outside the if block so it runs every frame regardless of `lightOn`:

```processing
void draw() {
    background(20);
    if (lightOn) {
        fill(255, 255, 0);
        ellipse(200, 200, 100, 100);
    }
}
```

Now the dark background clears the screen every frame, and the circle is only drawn when `lightOn` is true.

---

**13. Complete the Sketch (8 points)**

**Blank A** (5 points):

```processing
if (key == 'r') {
    r = r + 25;
    lastAction = "Red";
} else if (key == 'g') {
    g = g + 25;
    lastAction = "Green";
} else if (key == 'b') {
    b = b + 25;
    lastAction = "Blue";
} else if (key == ' ') {
    r = 0;
    g = 0;
    b = 0;
    lastAction = "Reset";
}
```

**Blank B** (3 points):

```processing
if (r > 255) {
    r = 255;
}
if (g > 255) {
    g = 255;
}
if (b > 255) {
    b = 255;
}
```

Note: Blank B uses separate if statements (not else-if) because each color channel must be checked independently.

---

**14. Design a Solution (8 points)**

In `draw()`:

```processing
if (state == 0) {
    fill(255, 0, 0);
} else if (state == 1) {
    fill(0, 255, 0);
} else {
    fill(255, 255, 0);
}
```

In `mousePressed()`:

```processing
if (state == 0) {
    state = 1;
} else if (state == 1) {
    state = 2;
} else {
    state = 0;
}
```

The draw() function reads the current state and sets the appropriate fill color before the ellipse is drawn. The mousePressed() function cycles through the three states in order: 0 → 1 → 2 → 0.
