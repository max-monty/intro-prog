# Asteroid Dodger: 4-Day Demo Arc


## Day 1 — First Class

**New concepts:** class definition, fields, no-arg constructor, methods, one object.

**What runs:** A single gray asteroid falls from the top of a dark sky. When it exits the bottom, it wraps back to the top at a new random x.

**Key moments to highlight:**
- The difference between the **class** (the blueprint) and the **object** (`a = new Asteroid();`).
- Fields (`x`, `y`, `speed`, `size`, `c`) hold the asteroid's state.
- `fall()` changes state, `display()` draws it. Separation of logic and drawing.
- `random()` calls inside the constructor make each run different.


---

## Day 2 — Constructor Arguments + Arrays 

**New concepts:** constructor arguments, arrays of objects, looping through an array.

**What runs:** Eight asteroids of different sizes fall at different speeds from different x positions.

**Key moments to highlight:**
- The constructor now takes `(float startX, float asteroidSize)`. Point out that **not everything has to be an argument** — `speed` is still randomized inside. Pass in what you want to customize.
- `new Asteroid[8]` creates the array, but **each slot is still empty** until the for loop fills it with `new Asteroid(...)`. This trips students up.
- One class, eight independent objects, each with its own state.


---

## Day 3 — Classes That Interact

**New concepts:** multiple classes, passing an object to a method, getters, collision detection between classes.

**What runs:** The player now controls a blue triangle ship with the left/right arrow keys. When an asteroid touches the ship, a red "HIT!" flashes on screen.

**Key moments to highlight:**
- The new `Player` class is structured like `Asteroid`: fields, constructor, `update()`, `display()`.
- `hitsPlayer(Player p)` — a method on one class that takes another class's instance variables as parameters. This is the big new idea.
- Nothing is removed yet and there's no score — just show the interaction working.

---

## Day 4 — Full Game

**New concepts:** ArrayLists, removing objects mid-loop (iterating backwards), a third class, game state (score, lives, game over).

**What runs:** A complete game. Arrow keys move the ship, spacebar fires bullets, asteroids spawn continuously, hitting an asteroid with a bullet destroys both and gives +10 points. Three lives. On death: game over screen, press R to restart.

**Key moments to highlight:**
- Why ArrayList instead of array: **size changes** as things spawn and get destroyed.
- The **iterate-backwards pattern** for removal:
  ```java
  for (int i = bullets.size() - 1; i >= 0; i--) { ... }
  ```
  Walking forward while removing skips elements — this is worth showing on the board.
- The `Bullet` class follows the same pattern students already know. Building a third class should feel routine by now.
- Game states via a boolean (`gameOver`) and simple top-level variables (`score`, `lives`).

**Controls:** ← → to move, SPACE to fire, R to restart after game over.

