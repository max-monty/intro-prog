# Day 1: Objects I — Introducing the Class

## Topics
- Class vs. object (blueprint vs. instance)
- Instance variables
- Constructors and the `new` keyword
- Instance methods (`void`)
- Creating multiple objects from one class

---

## Why This Matters

In Unit 4 we used parallel arrays: one ArrayList for x, another for y, another for size, another for speed. Everything about a single "ball" was scattered across four separate lists. Adding a property meant adding another list and remembering to update it everywhere.

A class bundles all the data and behavior for one kind of thing into a single blueprint. One object knows its own position, its own state, its own look. Ten objects each keep track of themselves.

Today: one class, a few objects.

---

## Vocabulary

| Term | Meaning |
|---|---|
| **Class** | A blueprint describing what an object has and does |
| **Object** | A specific instance built from a class |
| **Instance variable** | Data that belongs to one object |
| **Constructor** | A method that runs once when `new ClassName(...)` is called |
| **Instance method** | A function called on a specific object |
| **`new`** | Keyword that builds a new object using a constructor |

---

## Exercise 1: Basic Walker (Warm-Up)

Build a `Walker` class from scratch. One walker, center of canvas, random motion.

- Create a `Walker` class with `x` and `y` instance variables.
- Write a constructor that takes a starting position.
- Write a `step()` method that changes `x` and `y` by a small random amount each frame.
- Write a `display()` method that draws a small circle at the walker's position.
- In `setup()`, create one walker. In `draw()`, call `step()` and `display()`.
- Leave `background()` out of `draw()` so the walker leaves a trail.

Starter code: `Day_1_Activity_Walker/`.

---

## Exercise 2: Walker With Bias (Advanced)

Pure random motion produces noise. Give the walker a tendency so its movement means something.

- Add a `color` instance variable, assigned in the constructor.
- Modify `step()` so the walker leans in a direction. Pick one:
  - **Cursor chaser** — nudge `x` and `y` toward `mouseX`/`mouseY` each frame.
  - **Gravity** — always add a small downward push to `y`.
  - **Rightward drift** — random step, plus a constant +1 on `x`.
  - **Center-seeking** — pull back toward the middle when the walker strays.
- In `display()`, use `map()` so the walker's color changes with its position.

### Extension Options

- **Smooth Walker** — Replace `random()` in `step()` with `noise()` for organic motion. Keep `tx` and `ty` instance variables and advance them by small amounts each frame.
- **Flock** — Create an `ArrayList<Walker>` with 100 walkers. Most of the time each wanders randomly; about 10% of the time each one nudges toward `mouseX`/`mouseY`. The cloud leans toward the cursor.
- **Speed as ink** — Track how far the walker moved this frame; use `strokeWeight()` or alpha to express speed in the trail.
