# Unit 3: Loops/Iteration — Study Guide

## Big Ideas

This unit is about one fundamental question:

**How do programs do things repeatedly?** (Iteration)

### Why Loops Matter

Without loops, drawing 100 circles means writing 100 lines of code. With loops, it takes 3-4 lines. But loops aren't just about saving typing — they're about creating **systematic variation**. When a loop variable controls visual properties (position, size, color, rotation), small changes to the loop parameters produce dramatically different visual results.

The key insight: **a loop variable is both a counter and a creative tool.** The variable `i` doesn't just count from 0 to 9 — it can control where a shape appears, how large it is, what color it has, and whether it shows up at all.

### While vs For: Two Ways to Say the Same Thing

A `while` loop and a `for` loop can produce identical results. The difference is structure:

- **While loops** separate the three parts (initialize, check, update) across different lines. This makes them flexible but easier to accidentally break (forget the update = infinite loop).
- **For loops** pack all three parts into one line: `for (init; check; update)`. This makes them compact and hard to accidentally break. Use them when you know how many times to repeat.

The choice between them is about readability and intent, not capability.

### Loops + Prior Concepts

The most interesting loop programs combine iteration with other tools:
- **Loops + conditionals** → selective patterns (draw only if some condition is met)
- **Loops + random()** → organic, varied compositions
- **Loops + mouseX/mouseY** → interactive patterns
- **Loops + functions** → reusable pattern elements
- **Loops + map()** → translate loop counters into useful visual ranges

---

## Building on Units 1 and 2

| Prior Concept | How It Connects to Loops |
|---------------|--------------------------|
| Shapes and drawing | Loops repeat shape-drawing commands to create patterns |
| Variables | The loop variable controls what changes each iteration |
| `mouseX`/`mouseY` | Can be combined with loops for interactive patterns |
| Custom functions | Encapsulate a shape, then call it in a loop to create a grid |
| `random()` | Combined with loops to create organic, non-uniform patterns |
| Conditionals | Used inside loops to selectively draw or modify elements |
| String concatenation | Loop variable can be used in labels: `"Item " + i` |
| `fill()` / color | Loop variable can control color for gradient effects |

---

## How to Think Through Loop Code

### Strategy 1: Trace the Loop Variable

1. What is the initial value?
2. What is the condition? (When does it stop?)
3. What is the update? (How does it change each time?)
4. Write out the values: i=0, i=1, i=2, ... until the condition is false
5. Count how many times the loop body runs

### Strategy 2: Count the Iterations

For `for (int i = 0; i < N; i++)`:
- Starts at 0, ends at N-1, runs exactly **N** times

For `for (int i = 0; i <= N; i++)`:
- Starts at 0, ends at N, runs **N+1** times

For `for (int i = start; i < end; i += step)`:
- Number of iterations = (end - start) / step (rounded up)

### Strategy 3: Spot the Pattern

When reading loop code that draws shapes:
- What stays the same each iteration? (That's the constant)
- What changes? (That's controlled by the loop variable)
- How does it change? (Linear, random, conditional?)

### Strategy 4: Watch for Common Mistakes

- **Off-by-one**: `< 10` runs 10 times (0–9), `<= 10` runs 11 times (0–10)
- **Infinite loop**: forgetting to update the counter in a while loop
- **Wrong direction**: incrementing when you should decrement (or vice versa)
- **Scope**: a variable declared inside a loop doesn't exist outside it

---

## Practice Thought Exercises

Try these without running code — just think through them.

**1.** `for (int i = 0; i < 5; i++)` — How many times does the loop body run? What are the values of `i` during each iteration?

**2.** `for (int i = 10; i > 0; i = i - 2)` — What values does `i` take? How many iterations?

**3.** A while loop starts with `int x = 0` and the condition is `x < 400`. Inside the loop, `x = x + 50`. How many times does the loop run? What is `x` after the loop ends?

**4.** A for loop draws circles: `circle(i * 30, 200, 20)` for `i` from 0 to 9. Where is the leftmost circle? The rightmost?

**5.** Inside a for loop (i goes 0 to 7), the code says `if (i % 2 == 0) { fill(255); } else { fill(0); }`. Describe the pattern this creates.

**6.** A student writes `for (int i = 0; i < 10; i++) { int x = i * 40; }` and then tries to use `x` after the loop ends. What happens? Why?

**7.** What is the visual difference between:
```processing
for (int i = 0; i < 3; i++) { circle(200, 200, 50); }
```
and just writing `circle(200, 200, 50)` once?

**8.** A for loop draws 20 vertical lines across a 400-pixel canvas. What spacing would you use? Write the for loop.

---

### Answers

**1.** Runs 5 times. Values of i: 0, 1, 2, 3, 4.

**2.** i takes values 10, 8, 6, 4, 2. Five iterations. (When i becomes 0, the condition `i > 0` is false.)

**3.** x takes values 0, 50, 100, 150, 200, 250, 300, 350. The loop runs 8 times. After the loop, x = 400 (the update happens, then the condition fails).

**4.** Leftmost: i=0 → x = 0, so at (0, 200). Rightmost: i=9 → x = 270, so at (270, 200).

**5.** Even indices (0, 2, 4, 6) get white fill; odd indices (1, 3, 5, 7) get black fill. This creates an alternating black-and-white pattern.

**6.** Error — `x` was declared inside the loop's curly braces, so it only exists inside the loop. After the closing brace, `x` is out of scope.

**7.** Visually identical — both show one circle at (200, 200). The loop draws it 3 times in the exact same spot, but overlapping identical circles look the same. It's wasted work.

**8.** Spacing: 400 / 20 = 20 pixels apart. `for (int i = 0; i < 20; i++) { line(i * 20, 0, i * 20, height); }`

---

## Syntax Quick Reference

### While Loop

```processing
int counter = 0;         // 1. Initialize
while (counter < 10) {   // 2. Condition
  // code to repeat
  counter = counter + 1; // 3. Update
}
```

### For Loop

```processing
for (int i = 0; i < 10; i = i + 1) {
  // code to repeat
}

// Shorthand: i++ means i = i + 1
for (int i = 0; i < 10; i++) {
  // same thing
}
```

### Nested For Loops (Grid)

```processing
for (int row = 0; row < 8; row++) {
  for (int col = 0; col < 8; col++) {
    rect(col * 50, row * 50, 48, 48);
  }
}
```

### Common Loop Patterns

```processing
// Count from 0 to N-1 (N iterations)
for (int i = 0; i < N; i++) { ... }

// Count from 1 to N
for (int i = 1; i <= N; i++) { ... }

// Count down
for (int i = 10; i > 0; i--) { ... }

// Step by 2
for (int i = 0; i < 20; i += 2) { ... }

// Position shapes across canvas
for (int i = 0; i < 10; i++) {
  circle(i * 50, 200, 30);
}
```

### Modulo Operator (%)

```processing
5 % 2   // = 1 (remainder of 5 / 2)
6 % 2   // = 0
7 % 3   // = 1

// Alternating pattern
if (i % 2 == 0) { /* even */ } else { /* odd */ }
```

### map() Function

```processing
// map(value, fromLow, fromHigh, toLow, toHigh)
float brightness = map(i, 0, 10, 0, 255);
float size = map(i, 0, 9, 10, 50);
```

---

## Key Vocabulary

| Term | Definition |
|------|------------|
| **Iteration** | Repeating a block of code multiple times |
| **Loop variable** | The variable that changes each time the loop runs (often `i`) |
| **While loop** | Repeats as long as a condition is true |
| **For loop** | A compact loop with initialization, condition, and update in one line |
| **Nested loop** | A loop inside another loop; creates 2D patterns like grids |
| **Infinite loop** | A loop whose condition never becomes false — runs forever |
| **Increment** | Increasing a variable's value (e.g., `i++` or `i = i + 1`) |
| **Decrement** | Decreasing a variable's value (e.g., `i--` or `i = i - 1`) |
| **Off-by-one error** | Getting one extra or one fewer iteration than intended |
| **Modulo (%)** | Returns the remainder of division; useful for alternating patterns |
| **map()** | Converts a value from one range to another |
| **Scope** | Where a variable exists; loop variables declared in `for()` only exist inside the loop |
| **Counter** | A variable used to count iterations |
| **Grid** | A 2D arrangement of elements, typically created with nested loops |
