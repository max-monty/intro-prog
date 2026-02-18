# Unit 2: Control — Study Guide

## Big Ideas

This unit is about two fundamental questions:

1. **How do programs make decisions?** (Control Flow)
2. **How do programs remember and change over time?** (State Management)

### Control Flow: How Programs Decide

Programs rarely do the same thing every time. Conditional statements (`if`, `else if`, `else`) let programs choose different paths based on current conditions. The key insight: **it's not just about whether a condition is true — it's about how conditions are structured, ordered, and combined.**

- **Ordering matters**: In an else-if chain, the first true condition wins. Checking `>= 50` before `>= 100` catches everything above 50 and the later conditions never run.
- **Structure matters**: Separate `if` statements each run independently. An `if-else if` chain runs exactly one branch.
- **Combining matters**: `&&` requires ALL conditions to be true; `||` requires ANY. The choice between them changes program behavior completely.

### State Management: How Programs Remember

Variables store information, but the interesting question is: **how does that information change over time?**

- A boolean that toggles on each click creates an on/off switch
- An integer that increases each frame creates animation
- A string built from a variable captures a *snapshot* — changing the variable later doesn't update the string
- State only changes when code runs that changes it — if there's no event handler to modify a variable, it stays the same forever

### They Work Together

The most interesting programs combine both ideas: conditionals that check state, and events that change state. A click toggles a boolean, `draw()` checks that boolean, and the screen changes. Understanding this flow — **events modify state, draw reads state** — is the core mental model.

---

## Building on Unit 1

Unit 2 doesn't replace Unit 1 — it builds on it. Here's how the pieces connect:

| Unit 1 Concept | How It Connects to Unit 2 |
|----------------|---------------------------|
| `setup()` / `draw()` | `draw()` runs every frame, checking state and deciding what to display. Conditions in `draw()` make the display dynamic. |
| Variables | Variables store state. Booleans track on/off. Integers track counts, positions, levels. Strings track labels and messages. |
| Functions with return values | Functions can use conditionals to return different values based on input. A `getSpeed(health)` function might return 5.0 or 3.0 depending on the health value. |
| Event handlers (`mousePressed`, `keyPressed`) | Events are where state changes happen. A click toggles a boolean. A key press adjusts a value. These changes then affect what `draw()` does next frame. |
| The coordinate system | Conditions often involve positions: `if (mouseX < 200)` divides the screen in half. `if (ballX > width)` detects edges. |
| `random()` | Random values combined with conditionals create varied behavior: `if (int(random(2)) == 0)` simulates a coin flip. |

---

## How to Think Through Code

### Strategy 1: Trace Like a Computer

When you see code with conditionals:

1. Write down the current values of all variables
2. Go through each condition in order — which is the first one that's true?
3. Execute ONLY that branch (in an else-if chain)
4. Update any variables that change
5. Ask: if this is in `draw()`, what happens next frame?

### Strategy 2: Think About What Triggers Change

- What events can the user trigger? (clicks, key presses)
- What does each event handler do to the state?
- What does `draw()` do with the current state?
- Is there any state that *nothing* ever changes? (If so, that code path is fixed)

### Strategy 3: Check the Structure

- **Else-if chain?** → Exactly ONE branch runs (first true condition wins)
- **Separate if statements?** → EACH one is checked independently (multiple can run)
- **Nested ifs?** → ALL outer conditions must be true to even reach inner ones

### Strategy 4: Test the Boundaries

- What happens at the exact boundary value? (Does `> 100` include 100? No. Does `>= 100`? Yes.)
- What happens at 0? At the maximum? At negative numbers?
- Did the programmer handle all possible cases?

---

## Practice Thought Exercises

Try these quick reasoning challenges. No code to write — just think.

1. A boolean starts as `false` and gets toggled 7 times. What is its final value? What about 10 times?

2. An if-else if-else chain has 4 conditions, and ALL four happen to be true for the current values. How many branches actually execute?

3. Four separate `if` statements (not connected by else). All 4 conditions are true. How many execute?

4. `mousePressed()` adds 1 to a counter. `keyPressed()` resets it to 0. The user clicks 5 times, presses a key, then clicks 3 times. What's the counter?

5. A variable `x = 0` is declared globally. In `draw()`, the line `x = x + 1` runs every frame. Processing runs `draw()` about 60 times per second. What is `x` after 2 seconds?

6. What's the difference between `if (score > 90)` and `if (score >= 90)` when score is exactly 90?

7. You write `String msg = "Lives: " + lives;` when `lives` is 3. Then `lives` changes to 2. You print `msg`. What do you see?

8. A sketch has `background(220)` at the top of `draw()` and no other calls to `background()`. What would go wrong if you removed it?

<details>
<summary>Answers</summary>

1. After 7 toggles: `true` (odd number of toggles = opposite of start). After 10: `false` (even number = same as start).

2. Exactly 1. An else-if chain stops at the first true condition.

3. All 4. Separate if statements are independent — each is checked regardless of the others.

4. 3. The key press resets to 0, then 3 more clicks bring it to 3.

5. 120. Sixty frames per second × 2 seconds = 120 frames, each adding 1.

6. `> 90` is false when score is 90 (strictly greater than). `>= 90` is true (greater than *or equal to*).

7. "Lives: 3" — the string was built when lives was 3. Changing lives later doesn't update the already-built string.

8. Previous frames' drawings wouldn't be erased. Shapes would pile up and "smear" across the screen instead of showing a clean frame each time.

</details>

---

## Syntax Quick Reference

*This section is for looking things up, not for memorizing.*

### Conditionals

```processing
// If
if (condition) { ... }

// If-else
if (condition) { ... } else { ... }

// If-else if-else chain (first true branch wins)
if (cond1) { ... } else if (cond2) { ... } else { ... }

// Nested (both must be true for inner code to run)
if (outerCond) {
    if (innerCond) { ... }
}
```

### Comparison Operators

| Operator | Meaning |
|----------|---------|
| `==` | Equal to |
| `!=` | Not equal to |
| `<` | Less than |
| `>` | Greater than |
| `<=` | Less than or equal to |
| `>=` | Greater than or equal to |

### Logical Operators

| Operator | Meaning | True when... |
|----------|---------|--------------|
| `&&` | AND | Both sides are true |
| `\|\|` | OR | At least one side is true |
| `!` | NOT | The value is false |

### Booleans & Toggling

```processing
boolean active = false;
active = !active;  // Toggles: false → true → false → ...
```

### Strings

```processing
String name = "Alice";
String msg = "Hello, " + name + "!";  // "Hello, Alice!"
int score = 42;
String display = "Score: " + score;   // "Score: 42"
```

### Random

```processing
float r = random(100);        // 0 to 99.999...
float r = random(50, 150);    // 50 to 149.999...
int dice = int(random(1, 7)); // 1 to 6 (integer)
```

---

## Key Vocabulary

| Term | Definition |
|------|------------|
| Condition | An expression that evaluates to true or false |
| Boolean | A data type that holds only `true` or `false` |
| Toggle | Switching a boolean to its opposite value using `!` |
| Control flow | The order in which statements are executed in a program |
| If-else if chain | A series of connected conditions where only the first true branch runs |
| Independent ifs | Separate if statements that each run regardless of the others |
| Nested conditional | An if statement inside another if statement |
| Logical operator | `&&` (AND), `||` (OR), `!` (NOT) — combine or modify conditions |
| Comparison operator | `==`, `!=`, `<`, `>`, `<=`, `>=` — compare values |
| State | The values stored in a program's variables at a given moment |
| State change | When an event or code modifies a variable's value |
| Boundary value | A value at the exact edge of a condition (e.g., exactly 100 for `> 100`) |
| String | A data type that holds text |
| Concatenation | Combining strings (and other values) using the `+` operator |
