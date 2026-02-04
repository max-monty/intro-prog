# Day 4: If-Else and If-Else If-Else

## Topics
- `if-else` statement structure
- `if-else if-else` chains
- Choosing between multiple options
- Logical flow and mutually exclusive conditions
- Common patterns: range checking, state machines

---

## Activity: Mood Ring Visualizer

Create an interactive mood ring that responds to mouse position with beautiful color transitions and visual effects. The ring analyzes your "energy" based on where you move and displays different moods, colors, and patterns!

### Level 1: Basic Mood Ring
Create a ring that changes color based on horizontal mouse position.
- Divide the screen into 4 zones (left to right)
- Zone 1 (far left): "Calm" - blue ring
- Zone 2: "Content" - green ring
- Zone 3: "Energetic" - yellow ring
- Zone 4 (far right): "Passionate" - red ring
- Display the mood name below the ring
- Use if-else if-else to determine which zone the mouse is in

### Level 2: Gradient Moods
Add more nuanced mood detection with visual feedback.
- Add 6+ mood states based on mouseX position
- Include "Anxious" (purple), "Creative" (orange), "Mysterious" (deep purple)
- Add a secondary ring that pulses based on mouseY (bigger pulse = more intense)
- Display a mood description that changes with each state
- Background color should gradually shift to complement the ring

### Level 3: Animated Mood Display
Create animated visual effects for each mood.
- Each mood has unique visual effects:
  - Calm: slow, gentle ripples expanding from center
  - Energetic: fast, bouncing particles
  - Passionate: flame-like shapes rising
  - Mysterious: swirling stars or sparkles
- The ring itself animates (pulses, glows, rotates)
- Add smooth transitions between moods using lerp()
- Display an "aura" around the ring that matches the mood

### Level 4: Personal Mood Portrait
Create a full mood-responsive art piece.
- Multiple visual elements that all respond to mood
- Background patterns unique to each mood
- Sound or visual "heartbeat" that changes tempo with energy level
- Add a "mood history" - trail showing recent mood changes
- Create a "reading" mode: hold SPACE for 3 seconds to get a detailed mood analysis
- Allow saving/screenshotting favorite mood combinations
- Add keyboard controls to lock certain aspects while changing others

---

## Starter Code
Open `Day_4_Activity_moodring/Day_4_Activity_moodring.pde` to begin.

## Homework
- Placeholder for homework assignment
