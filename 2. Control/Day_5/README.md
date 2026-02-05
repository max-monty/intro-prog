# Day 5: Nested If Statements

## Topics
- Nesting `if` statements inside other `if` statements
- When to use nested vs chained conditionals
- Logical operators (`&&`, `||`, `!`)
- Combining conditions for complex logic
- Code organization and readability with nested structures

---

## Activity: Conditional Testing (Continued)

Continue expanding your project from Days 3-4. Use nested `if` statements and logical operators (`&&`, `||`, `!`) to add layered, complex behavior.

### Expanding Your Project

#### Left or Right
- Use nested ifs to detect quadrants: first check top/bottom, then check left/right within each half
- Combine conditions with `&&` to create special corner zones with unique messages
- Add a "dead zone" in the center using `&&` (e.g., `mouseX > width/2 - 50 && mouseX < width/2 + 50`) with its own behavior

#### Billiard Ball
- Use nested ifs to change the ball's behavior based on which quadrant it's in (e.g., faster in top-right, changes color in bottom-left)
- Add a second ball and use `&&` to detect when both balls are in the same region
- Use `||` to trigger effects when the ball is near any edge

#### One-Person Pong
- Use nested conditions in scoring: check if the ball was returned AND where on the paddle it hit for bonus points
- Add power-up zones on screen: if the ball passes through a zone AND the player presses a key, activate a power-up
- Use `&&` to create combo conditions (e.g., score > 10 AND ball speed > threshold shows a special effect)

#### Choose Your Own Adventure
- Use nested ifs for branching dialogue: check which room the player is in, THEN check which option they clicked
- Add items that only work in certain rooms using `&&` (e.g., have key AND in locked room)
- Use `||` to create multiple paths to the same outcome

#### State Machines I-IV
- Nest conditions to check both the current state AND where the user clicked for different outcomes
- Use `&&` to require the user to click inside the square AND press a key simultaneously to change state
- Create a grid of squares where clicking one affects its neighbors using nested position checks

---

## Getting Started
Continue working in the sketch folder from Days 3-4.

## Homework
- Use a chatbot of your choice to review nested if statements. Create a sketch with a complex if-else-if-else statement with at least one nested if statement.
