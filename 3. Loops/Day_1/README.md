# Day 1: While Loops

## Topics
- The concept of iteration: why loops exist
- `while` loop syntax and structure
- Loop conditions and loop variables
- Incrementing a counter
- Using loops to draw repeated shapes
- Avoiding infinite loops

---

## Activity: Row of Shapes

### Level 1: Seven Circles
Use a while loop to draw a row of 7 circles evenly spaced across the canvas.
- Declare a counter variable (e.g., `int x = 50;`)
- Use a while loop that runs while `x` is less than the canvas width
- Draw a circle at each x position
- Increment x by a fixed spacing each iteration
- Use `fill()` to give each circle a color

### Level 2: Transitioning Row
Make each shape in your row look different by linking visual properties to the loop variable.
- Change the **size** of each shape based on its position (small on the left, large on the right)
- Change the **color** of each shape (dark to light, or cycle through a palette)
- Use at least TWO visual properties that change with the loop variable
- Try using `map()` to convert the x position into a color or size range

### Level 3: Gradient Bar
Create a smooth color gradient using a while loop that draws many thin rectangles side by side.
- Draw 20+ narrow rectangles filling the canvas width
- Each rectangle's color should transition smoothly from one color to another
- Use `map()` to calculate color values from position
- Try making the gradient respond to `mouseX` (shift the start or end color)
- Add subtle `random()` variation to each rectangle's color

### Level 4: Receding Landscape
Use a while loop to create a landscape with depth illusion.
- Draw vertical lines across the canvas where the top endpoints converge toward a vanishing point
- Add color variation (lines closer to center are lighter/hazier)
- Make the scene interactive: use `mouseX`/`mouseY` to shift the vanishing point
- Add an `if` statement that changes line style based on position
- Try using a custom function to draw each line with its effects
