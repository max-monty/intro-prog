# Day 2: Objects II — Methods That Return Values

## Topics
- Instance methods that return a value (not just `void`)
- `boolean`-returning methods — asking the object a yes/no question
- Using a returned value inside an `if` statement

---

## Why This Matters

Yesterday every method was `void` — it did something but didn't answer anything. Today objects answer questions about themselves.

A button answers *"am I being pressed?"* A ball answers *"am I hitting a wall?"* Once an object can answer, the main sketch stays simple — it asks, and reacts.

```processing
if (ball.isHittingEdge()) {
  // bounce
}
```

That pattern is the whole day.

---

## Vocabulary

| Term | Meaning |
|---|---|
| **Return type** | The first word of a method signature; declares what the method gives back |
| **`void`** | Return type meaning "returns nothing" |
| **`boolean`** | Return type meaning "returns true or false" |
| **`return`** | Keyword that hands a value back to the caller |

---

## Exercise 1: Bouncing Ball (Warm-Up)

Starter code: `Day_2_Activity_BouncingBall/`. The `Ball` class is outlined — fill in the three methods so one ball moves and bounces off the walls.

- Implement `move()` so the ball updates `x` and `y` using `xSpeed` and `ySpeed`.
- Implement `show()` so it draws itself at `(x, y)` using color `c`.
- Implement `isHittingEdge()` — return a `boolean`: `true` if the ball is touching any edge.
- In `draw()`, if `b.isHittingEdge()` returns true, reverse both `xSpeed` and `ySpeed`.

Result: one ball bouncing inside the canvas.

---

## Exercise 2: Smarter Bounce (Advanced)

A single "hitting any edge" check is wrong — a ball hitting the right wall shouldn't have its `ySpeed` flipped.

- Split the check into two boolean methods:
  - `isHittingSide()` — true if touching the left or right wall.
  - `isHittingTopBot()` — true if touching the top or bottom.
- In `draw()`, reverse only the matching speed.
- Add a third method that returns a number. Pick one:
  - `float speed()` — returns `sqrt(xSpeed*xSpeed + ySpeed*ySpeed)`.
  - `float distFrom(float tx, float ty)` — returns distance from a given point.
- Use the returned number to change the ball's appearance (faster = brighter, closer to cursor = bigger, etc.).

### Extension Options

- **Three balls, three speeds** — Create three `Ball` objects in `setup()`, each with a different starting speed. Watch them bounce independently.
- **Energy loss** — On each bounce, multiply the flipped speed by `0.95`. The ball slows and settles.
- **Flash on impact** — Add a `boolean flashing` instance variable. Set it true for a few frames after a hit; use it in `show()` to flash the ball white on contact.
- **Off-screen vs. touching** — Add `boolean isOffScreen()` that returns true only when the ball is fully past the edge. Compare: why does `isHittingEdge()` work for bouncing, but `isOffScreen()` is what you'd use to remove a ball from a list?
