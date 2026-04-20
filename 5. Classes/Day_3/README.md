# Day 3: Arrays x Objects I — Many Objects at Once

## Topics
- Making many objects from one class
- `ArrayList<ClassName>` — a list that holds objects
- Looping through a list of objects with `for (int i = 0; i < list.size(); i++)`
- Calling instance methods on every object in a loop
- Adding objects over time; removing them safely with a backward loop

---

## Why This Matters

You know how to make one object. A second means copy-pasting and renaming. A hundred is untenable.

One class, many objects. The class is the blueprint; the ArrayList is the stockpile. Each object tracks itself, so you can hold hundreds without tangling any logic. The loop through the ArrayList is the same shape as Unit 4 — just calling `.move()` and `.show()` instead of `.get()` and `.set()`.

This is where classes and arrays start paying for themselves.

---

## Vocabulary

| Term | Meaning |
|---|---|
| **`ArrayList<Type>`** | A growable list holding values of the given type |
| **`.add(x)`** | Appends `x` to the list |
| **`.get(i)`** | Returns the element at index `i` |
| **`.size()`** | Returns how many elements are in the list |
| **`.remove(i)`** | Removes the element at index `i`; later elements shift down |

---

## From Yesterday's Ball to Today's Balls

Yesterday:

```processing
Ball b;

void setup() {
  b = new Ball(4);
}

void draw() {
  b.move();
  if (b.isHittingEdge()) ...
  b.show();
}
```

Today:

```processing
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  for (int i = 0; i < 10; i++) {
    balls.add(new Ball(random(2, 5)));
  }
}

void draw() {
  for (int i = 0; i < balls.size(); i++) {
    Ball b = balls.get(i);
    b.move();
    if (b.isHittingEdge()) ...
    b.show();
  }
}
```

Same class, same methods — just called on each ball in the list.

---

## Exercise 1: Array of Balls (Warm-Up)

Start from your Day 2 bouncing-ball sketch. Convert the single `Ball` into an `ArrayList<Ball>`.

- Change `Ball b;` into `ArrayList<Ball> balls = new ArrayList<Ball>();`
- In `setup()`, use a `for` loop to add 10 balls to the list.
- In `draw()`, loop through the list — `move()`, check edges, `show()` on each ball.
- Add a `mousePressed()` that appends one more ball to the list at the click position.

Result: a canvas of balls bouncing independently, with new balls spawning on click.

---

## Exercise 2: Rainfall (Advanced)

Starter code: `Day_3_Activity_Rainfall/`. Build a rainstorm. Each drop is an instance of a `Raindrop` class. An `ArrayList<Raindrop>` holds them. New drops spawn every frame; drops past the bottom are removed.

- Implement `fall()` (updates `y`), `show()` (a short line from `(x, y)` to `(x, y + len)`), and `isOffScreen()` (returns true once the drop passes `height`).
- In `draw()`, spawn 2–3 new drops per frame.
- Loop through the list **backward** and remove any drop whose `isOffScreen()` returns true. The backward loop matters because you're removing from the list as you iterate.
- Randomize each drop's speed, length, and color in the constructor. Use `map()` so faster drops are longer and brighter — they feel closer.

### Extension Options

- **Splash** — When a drop hits the ground, spawn a ripple. Add a `Splash` class with `x`, a growing `radius`, and a fading alpha. Store splashes in their own ArrayList. They fade out over ~30 frames and remove themselves.
- **Wind** — Add an `xSpeed` to `Raindrop`. Let a top-level `wind` variable push every drop horizontally. Tie `wind` to `mouseX` or to `noise()` so it drifts instead of jumps.
- **Snow mode** — Press a key to switch from rain to snow. Snowflakes are slower, whiter, and wobble side-to-side as they fall (use `noise()` on `x`).
- **Localized storm** — On `mousePressed()`, spawn 20 drops at the cursor.
