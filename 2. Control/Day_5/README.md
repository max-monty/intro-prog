# Day 5: Nested If Statements

## Topics
- Nesting `if` statements inside other `if` statements
- When to use nested vs chained conditionals
- Logical operators (`&&`, `||`, `!`)
- Combining conditions for complex logic
- Code organization and readability with nested structures

---

## Activity: Quadrant Quest

Create an interactive exploration game where different regions of the screen have unique behaviors, visuals, and secrets. Use nested if statements to create a rich, layered world!

### Level 1: Four Kingdoms
Divide the screen into 4 quadrants, each a different "kingdom."
- **Top-Left**: Ice Kingdom (blue/white, snowflakes fall)
- **Top-Right**: Fire Kingdom (red/orange, embers rise)
- **Bottom-Left**: Forest Kingdom (green, leaves drift)
- **Bottom-Right**: Ocean Kingdom (blue/teal, bubbles float)
- Use nested if statements: first check if mouse is in top/bottom half, then check left/right
- Display the kingdom name when mouse enters each region

### Level 2: Kingdom Interactions
Add interactive elements to each kingdom.
- Each kingdom has a clickable object in its center:
  - Ice: Click the snowflake to create a blizzard
  - Fire: Click the flame to create an explosion
  - Forest: Click the tree to grow flowers
  - Ocean: Click the wave to spawn fish
- Use nested conditions: check which kingdom you're in, THEN check if you clicked the object
- Add a score or collection system (collect items from each kingdom)

### Level 3: The Border Zones
Create special zones where kingdoms overlap.
- The center of the screen is a "Nexus" zone where all elements mix
- Each border between kingdoms has unique effects:
  - Ice + Fire border: Steam/mist effects
  - Forest + Ocean border: Swamp with lily pads
  - Ice + Forest border: Frozen trees
  - Fire + Ocean border: Volcanic islands
- Use complex nested conditions or logical operators (&&) to detect border zones
- Border zones have their own collectibles or challenges

### Level 4: Quest System
Create a full mini-game with objectives.
- Player has a quest log with tasks: "Visit all 4 kingdoms," "Collect 3 items from Ice Kingdom," etc.
- Add a player character that moves with arrow keys (stays within bounds)
- Enemies or obstacles that behave differently in each kingdom
- Power-ups that only work in certain kingdoms
- Hidden areas that require visiting kingdoms in a specific order
- Boss battle in the Nexus zone that combines all elements
- Win/lose conditions with restart capability

---

## Starter Code
Open `Day_5_Activity_quadrantquest/Day_5_Activity_quadrantquest.pde` to begin.

## Homework
- Placeholder for homework assignment
