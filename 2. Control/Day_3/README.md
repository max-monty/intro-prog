# Day 3: Boolean Variables and If Statements

## Topics
- Boolean data type (`true` / `false`)
- Declaring and using boolean variables
- `if` statement syntax and structure
- Comparison operators (`==`, `!=`, `<`, `>`, `<=`, `>=`)
- Using `keyPressed` with `if` statements
- Toggling boolean values

---

## Activity: Digital Creature

Create an interactive digital creature that responds to your actions! Use boolean variables to control its states and if statements to change its appearance and behavior.

### Level 1: Mood Toggle
Create a simple face that toggles between happy and sad.
- Create a boolean variable `isHappy` starting as `true`
- If `isHappy` is true: draw a smile (arc curving up) and bright eyes
- If `isHappy` is false: draw a frown (arc curving down) and droopy eyes
- Press SPACE to toggle between moods
- Change the background color based on mood (happy = warm, sad = cool)

### Level 2: Multi-State Creature
Add more states and visual feedback.
- Add boolean variables: `isAwake`, `isHungry`, `isScared`
- Press 'A' to toggle awake/asleep (closed eyes when asleep)
- Press 'H' to toggle hungry (show tongue or open mouth)
- Press 'S' to toggle scared (wide eyes, shaking)
- Each state should change the creature's appearance
- Display the current states as text on screen

### Level 3: Environmental Response
Make your creature respond to the environment.
- If mouse is on the left side, creature looks left
- If mouse is on the right side, creature looks right
- If mouse is above creature, it looks up
- If mouse is too close (within 100 pixels), creature gets scared
- Add a "petting" zone - if mouse is on the creature, it becomes happy

### Level 4: Living Creature
Create a creature with personality and complex behaviors.
- Creature has needs that change over time (gets hungry, gets sleepy)
- Clicking feeds the creature (if hungry)
- Holding mouse still for 3 seconds pets the creature (becomes happy)
- Creature "breathes" - subtle size pulsing
- Eyes follow the mouse cursor
- Add sound effects or visual feedback for interactions
- Create multiple creature "skins" that can be toggled

---

## Starter Code
Open `Day_3_Activity_creature/Day_3_Activity_creature.pde` to begin.

## Homework
- Placeholder for homework assignment
