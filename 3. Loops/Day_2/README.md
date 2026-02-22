# Day 2: For Loops

## Topics
- `for` loop syntax: initialization, condition, update
- Converting while loops to for loops
- When to use for vs while
- Using the loop variable `i` for counting
- Using `map()` to scale loop variable to visual ranges
- Drawing grids with nested for loops (introduction)

---

## Activity: Pattern Generator

### Project Options

1. **Lines to the Cursor** - Use a for loop to draw 10+ lines from evenly spaced points along the bottom of the canvas, all connecting to the mouse position. Change line color or weight based on the loop variable.

2. **Color-Bar Gradient** - Use a for loop to draw 20+ thin rectangles across the canvas. Each rectangle's color lerps between two colors. Randomize the colors on mouse click. Add a second gradient row with different colors.

3. **Mini-Calendar** - Use a for loop to draw a row of visual elements, one for each day of the month (e.g., 30 small squares). Highlight the "current day" differently using an if statement. Add a second row for another month.

4. **Concentric Rings** - Use a for loop to draw concentric circles (largest first, smallest last). Vary the color of each ring. Make the center follow the mouse.

5. **String Art** - Use a for loop to draw lines between points on two different edges of the canvas, creating a string-art curve effect. Experiment with spacing and connection patterns.

6. **Stochastic Scatter** - Use a for loop to deposit small shapes at random positions on each frame. Use an if statement to randomly vary the shape type (circle vs square) or color. Add a semi-transparent background for a trail effect.

7. **Dashed Line** - Write a for loop that draws a dashed line from one point to the mouse cursor. Each dash has a fixed length with a gap between. Longer distances = more dashes.

8. **Geometric Progression** - Draw shapes that grow by a constant ratio (each 1.3x larger than the last). Try concentric circles or a row of growing rectangles. Use `fill()` variations to emphasize the progression.
