# Day 2: Randomness

## Topics
- `random()` function with one parameter
- `random()` function with two parameters (range)
- Generating random colors
- Generating random positions
- Generating random sizes
- Using `int()` to convert random floats to integers

---

## Activity: Particle Universe

Create a  particle system that generates unique visual compositions.

### Level 1: Stardust
Create a simple particle generator that fills the screen with dots.
- Click to spawn 10 random dots at your mouse position
- Each dot has a random size between 5 and 20
- Each dot has a random grayscale color (use `random(256)`)
- Click to clear the canvas

### Level 2: Color Explosion
Add color palettes and controlled randomness.
- Create "warm" particles (reds, oranges, yellows - red channel high, blue channel low)
- Create "cool" particles (blues, purples, cyans - blue channel high, red channel low)
- Click to toggle color modes
- Add transparency using a 4th parameter in `fill(r, g, b, alpha)`
- Make particles vary in size based on distance from mouse

### Level 3: Organic Flow
Create particles that look natural and organic.
- Spawn particles that slowly drift in random directions
- Use `random(-2, 2)` for x and y velocity
- Particles should fade out over time (decreasing alpha)
- Layer particles to create depth (darker = further back)

### Level 4: Living Canvas
Create an evolving, interactive particle ecosystem.
- Particles that are attracted to or repelled by the mouse
- Particles that leave trails (don't clear background completely)
- Particles that grow or shrink over their lifetime
- Add a "gravity" mode: particles fall and bounce
- Create "constellations" - particles that connect with lines when close

---

## Starter Code
Open `Day_2_Activity_particles/Day_2_Activity_particles.pde` to begin.

## Homework
- [Conditionals 2:02 - 2:28](https://www.youtube.com/watch?v=4JzDttgdILQ&t=7366s)
- Code: any sketch that uses random to create a visual effect
