# Day 4: Arrays x Objects II — Interactive Collections

## Topics
- An `ArrayList` of objects that respond to the user (hover, click)
- Each object uses its own `boolean` method to detect interaction
- Spawning new objects in response to input
- Removing objects with a backward loop

---

## Why This Matters

Yesterday the ArrayList moved on its own — drops fell, balls bounced. Today the user becomes part of the system. Every object in the list answers *"is the mouse on me?"* and reacts. That one boolean method is the difference between a passive animation and an interactive world.

This is the pattern behind almost every game and UI: a list of things, each one checking itself against the cursor, each one able to spawn, change, or disappear on its own.

---

## Vocabulary

| Term | Meaning |
|---|---|
| **Backward loop** | `for (int i = list.size() - 1; i >= 0; i--)` — used when removing from an ArrayList |
| **Event function** | `mousePressed()`, `keyPressed()` — called by Processing when the event happens |
| **State** | A value an object tracks over time (e.g. `boolean hit`) |

---

## Exercise 1: Hoverable Bubbles (Warm-Up)

Starter code: `Day_4_Activity_Bubbles/`. You're given a `Bubble` class that needs two methods filled in.

- Implement `isHovered()` — return true if the mouse is inside the bubble (`dist(mouseX, mouseY, x, y) < size / 2`).
- Implement `show()` — draw the bubble. If it's hovered, use a highlight color; otherwise use the default.
- In `draw()`, loop through `bubbles` and call `show()` on each.

Result: 15 bubbles on the canvas; hovering any one of them changes its color.

---

## Exercise 2: Pop & Replace (Advanced)

Make the bubbles respond to clicks and keep the canvas full.

- Add `void mousePressed()` that loops **backward** through `bubbles`. If a bubble is hovered, remove it from the list and push a fresh `new Bubble()` so the canvas stays full.
- Give each bubble its own color in the constructor.
- Make hovered bubbles grow slightly — in `show()`, draw a diameter a little larger than `size` when `isHovered()` is true. Do not change `size` itself, because `isHovered()` uses it.

### Extension Options

- **Whack-a-Mole** — Add a `lifespan` instance variable that counts down each frame. When `lifespan <= 0`, remove the bubble (it "escaped"). Track a `score`: +1 for clicks, -1 for escapes. Display it with `text()`.
- **Drift** — Give each bubble a small `xSpeed` and `ySpeed`. They float. Bounce or wrap at edges. Does hover still feel accurate while they move?
- **Magnet** — Instead of hover highlighting, make each bubble drift toward the cursor: `x += (mouseX - x) * 0.02;`. A hovered bubble pulls harder.
- **Sparkle** — Build a second class, `Sparkle`, that appears at a popped bubble's position. Sparkles have a short lifespan, shrink over time, then remove themselves. Store them in their own ArrayList.
