Progress through these activities, which, by using classes, build up to a full-game implementation. When you finish, create your own.

## Activity 1: Moving Ball

Create a `Ball` class. The constructor should set the ball's starting position (center of screen), random velocity, random color, and a fixed size. Write `move()` and `display()` methods. The ball should move to the right. When it goes off the screen, it should wrap around to the other side.

---

## Activity 2: Sun and Cloud

Create two separate classes that share the screen but don't interact with each other.

- **`Sun`** — picks a random position on the screen when created and a random color (stick to warm colors like yellows and oranges). Has a `display()` method that draws the sun, and a `pulse()` method that slowly changes its size over time so it appears to gently grow and shrink.
- **`Cloud`** — picks a random starting position and a random drifting speed when created. Has a `drift()` method that moves the cloud horizontally across the screen (wrapping around when it goes off the edge) and a `display()` method that draws the cloud using a few overlapping ellipses.

**In the main sketch:** Create one `Sun` object and one `Cloud` object. In `draw()`, call the appropriate methods on each so the sun pulses in place while the cloud drifts across the sky.

**Challenge:** Add a third class `Bird` that flaps its wings (alternates between two shapes) and flies across the screen at its own speed.

---

## Activity 3: Ball Pit

Using your `Ball` class from Activity 1, modify it so that each ball picks a random starting position anywhere on the screen (instead of the center). The ball should still have random velocity, random color, and a fixed size. The `move()` method should allow the ball to travel in any direction, and the ball should still wrap around when it goes off any edge of the screen.

**In the main sketch:** Create an array of 20 `Ball` objects. Use a `for` loop to move and display all of them each frame.

**Challenge:** Make each ball bounce off the walls

---

## Activity 4: Target Practice

Create a `Target` class. Each target picks a random position and random size when created. Write `display()` and `isHit()` methods. The `isHit()` method checks if the mouse is inside the target and returns a boolean. If the target is hit, it stops being shown on the screen.

**Challenge:** Create an ArrayList of multiple targets. When one is hit, remove it from the ArrayList.

---

## Activity 5: Dodge the Falling Blocks

Create two classes:

- **`Player`** — a square the player controls with arrow keys or the mouse. Has `display()` and `update()` methods.
- **`Block`** — a falling square. Constructor picks a random x position at the top of the screen and a random falling speed. Has `fall()`, `display()`, and `hitsPlayer()` methods. When it goes off the bottom, it resets to the top with a new random x and speed (via a `reset()` method).

**In the main sketch:** Create 1 `Player` and an array of 6 `Block`s. If any block hits the player, display "GAME OVER" and stop the blocks.

## Activity 6: Zombie Survival Game

## Task

Create three classes that work together to form a complete game.

### `Player`
- Controlled by the arrow keys.
- Has `display()` and `getX()` / `getY()` methods so other classes can check distance to the player.

### `Zombie`
- Spawns at a random edge of the screen.
- Each frame, moves slowly toward the player's current position.
- Has `update()`, `display()`, and `touchesPlayer()` methods.

### `Bullet`
- Spawns at the player's position when the player clicks.
- Travels in a direction of the mouse
- Has `update()`, `display()`, `isOffScreen()`, and `hitsZombie()` methods.

---

## In the Main Sketch

- Use `ArrayList<Zombie>` and `ArrayList<Bullet>`.
- Spawn a new zombie every 60 frames.
- Each frame:
  - Update and display the player, all zombies, and all bullets.
  - Check if any bullet hits any zombie — if so, remove both.
  - Check if any zombie touches the player — if so, game over.
- Display the score (zombies killed) on screen.

---

## Challenge

- Add a **wave system**: every 10 kills, zombies spawn faster.
- Give zombies a certain amount of health so it takes multiple hits for them to disappear.
