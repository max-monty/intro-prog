# ArrayList Practice — Mini-Sketches

Complete each mini-sketch in order. Each one is a separate Processing sketch.

---

## Sketch 1: Random Circles

Create an ArrayList of Float values for x positions and another for y positions. In `setup()`, use a loop to add 10 random x values and 10 random y values to your ArrayLists. Then in `draw()`, loop through the ArrayLists and draw a circle at each position. If the user clicks the mouse, add a new circle at `mouseX` and `mouseY` 


## Sketch 2: Moving Dot Trail

Create an ArrayList for x positions and another for y positions. Every frame in `draw()`, add `mouseX` and `mouseY` to your ArrayLists. Then loop through and draw a small circle at every stored position. Watch your cursor leave a trail of dots across the screen. Add ArrayLists for xSpeeds and ySpeeds for every dot. When each dot is created, give in a random xSpeed and ySpeed. Update each dots position each frame with this speed. For a challenge, have it update each frame using noise()



## Sketch 3: Bouncing balls with ArrayLists

Recreate your bouncing ball sketch with ArrayLists. Have a new ball created each time you click your mouse. Have your ball fade from black to white each time it hits a wall. Remove it from your ArrayList once it is completely faded to white.



## Sketch 4: Gravity Drops

*Inspired by Daniel Shiffman's Nature of Code — forces and movers*

Click anywhere to release a ball. It falls under gravity, bounces off the floor, and gradually loses energy until it settles. Each click adds another ball to the world. The screen fills with a little physics playground you created.

**Your sketch should:**
1. Create three `ArrayList<Float>` — one for x positions, one for y positions, one for y-velocity
2. In `mousePressed()`, add the mouse position and a starting velocity of 0
3. Each frame, for every ball:
   - Add a small gravity value (like 0.4) to its y-velocity
   - Add its y-velocity to its y-position
   - If it hits the floor (`y > height`), bounce it: set y to height, and reverse its velocity with some energy loss (multiply by -0.8)
4. Draw every ball and display the count

![Gravity Drops](gravity_drops.png)

**Make it yours:** Give each ball a random size (add a fourth ArrayList). Add walls on the left and right edges. Try different gravity values — what does 0.1 feel like? What about 2.0? What happens on the moon (gravity = 0.07)?

---

## Sketch 5: Attract

*Inspired by Nature of Code Chapter 2 — gravitational attraction*

Build on your Gravity Drops. Now the mouse is a gravitational attractor — every ball is gently pulled toward the cursor each frame, in addition to falling with gravity. The result: balls orbit, swirl, and cluster around your mouse in fluid, hypnotic motion.

**Build on Sketch 5 by adding:**
1. Each frame, for every ball, calculate the direction from the ball toward the mouse
2. Add a small fraction of that direction to the ball's velocity (this is the "attraction force")
3. You'll need a fourth ArrayList for x-velocity (so balls can move horizontally too)

Here's the core idea — for each ball, add these two lines inside your loop:
```java
float forceX = (mouseX - x.get(i)) * 0.01;
float forceY = (mouseY - y.get(i)) * 0.01;
```
Then add `forceX` and `forceY` to the ball's velocities. That `0.01` controls how strong the pull is.

![Attract](attract.png)

**Make it yours:** Try pressing the mouse to make the attractor push balls away instead of pulling them (flip the sign). What value of attraction strength creates the most interesting orbits? Can you add "friction" so balls slowly lose speed over time? Press a key to freeze/unfreeze the attractor. What happens if you remove gravity entirely and only have the attractor?
