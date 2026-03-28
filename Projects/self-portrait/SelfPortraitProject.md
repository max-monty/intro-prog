# Project: Self-Portrait

Your self-portrait doesn't have to look like a photograph. It should look like **you** — your personality, your vibe, your energy. Use code to express something about who you are that a camera can't capture.

A self-portrait can be:
- **Literal** — a face built from shapes, with your actual features
- **Figurative** — an abstract composition that represents your mood, interests, or personality
- **Symbolic** — objects, patterns, or scenes that say something about you without showing a face
- **Surreal** — a dreamlike or exaggerated version of yourself

---

## Inspiration

Click these to see interactive examples — move your mouse, click, press keys:

- [Flashing lights and Growing Eyes](https://editor.p5js.org/Amelia_Yang/full/_6-L21iIm)
- [I'm Watching You!](https://editor.p5js.org/MarvenMa/full/xVTQTtWXK) 
- [GUI-based Danceer](https://editor.p5js.org/CoderJay/full/7SmQTTkn2)
- [Pixel Face](https://openprocessing.org/sketch/188858)
- [Hair Grower](https://editor.p5js.org/jinnie75/full/wbg8eWyDv)
- [Sad Eyes](https://editor.p5js.org/LUNAPARK1/full/YbAevJ5nF) 
- [Pixel Eyes](https://editor.p5js.org/AudreyDahyungOh/full/RJFedroNT)
- [Reach For the Sky](https://editor.p5js.org/Chris-ITP/full/Ya5p9hfcvl)
- [Paint and Follow](https://editor.p5js.org/ranjanir/full/dTnXjDjgS)

Notice how each one feels different. Some are funny, some are moody, some are precise, some are chaotic. **Your portrait should have a feeling too.**

---

## Requirements

This project is cumulative — you should use concepts from **all three units**.

### Portrait (the art)
- Create a self-portrait using shapes (`circle()`, `rect()`, `ellipse()`, `triangle()`, `line()`, `arc()`)
- Include **distinct features or details** that make it recognizably *you*
- This could be facial features, clothing, accessories, a scene, objects you care about, or an abstract pattern that represents your personality
- Use **color intentionally** — your palette should feel like a choice, not a default

### Loops (Unit 3)
- Use **at least one `for` or `while` loop** in a meaningful way
- Your loop should create repeated visual elements that enhance the portrait
- Examples: hair strands, freckles, eyelashes, stars, a patterned shirt, tiled background, confetti, rays of light, a gradient, fence posts, repeating shapes

### Control Flow (Unit 2)
- Use **at least one conditional** (`if`, `if-else`, or `if-else if-else`)
- Use **at least one `random()`** call for organic variation
- Use **string concatenation** to display text (a name, title, mood label, or quote)

### Variables & Animation (Units 1-2)
- Use **built-in variables** (at least one of: `mouseX`, `mouseY`, `frameCount`)
- Create **at least two custom variables** that change over time (examples: `blink`, `angle`, `pulse`, `xOffset`, `mood`)
- Your portrait must include **animation** — something should move, pulse, blink, drift, grow, or change

### Interactivity (Unit 1)
- Add **at least one interactive feature**:
  - `mousePressed()` — click to change something (mood, accessory, background)
  - `keyPressed()` — press a key to toggle or transform
  - Mouse position — eyes follow the cursor, colors shift, elements react
- The interaction should feel **intentional**, not random

### Code Quality
- Use **descriptive variable names** (`eyeX`, `shirtColor`, `blinkTimer` — not `a`, `b`, `x1`)
- Organize code with **section comments** (`// --- HAIR ---`, `// --- BACKGROUND ---`)
- Use **at least one custom function** to organize repeated or complex drawing

---

## Level Guide

### Level 1: Foundation
- A recognizable portrait built from shapes
- At least one loop for repeated elements
- Basic animation (something moves)
- Clean, commented code

### Level 2: Expression
- Visual properties change with loop variables (size, color, spacing)
- Meaningful interactivity (click or key changes something about the portrait)
- Uses `random()` for organic variation
- Displays text with string concatenation
- Color palette feels intentional

### Level 3: Personality
- Multiple loops creating layered visual complexity
- Conditionals control behavior (e.g., mood states, day/night mode, expressions)
- Custom function(s) for reusable elements
- Animation feels smooth and purposeful
- Portrait communicates something about who you are beyond physical appearance

### Level 4: Challenge (optional)
- Nested loops or multiple interacting loops
- Advanced techniques: `map()`, modulo (`%`), `sin()`/`cos()`, `translate()`/`rotate()`
- Multiple interactive states or transformations
- Thoughtful composition — background, foreground, details at multiple scales

---

## Rubric

| Criteria | 4 — Creative Mastery | 3 — Strong Understanding | 2 — Developing | 1 — Beginning |
|---|---|---|---|---|
| **Loops** | Loops are essential to the design; clearly enhance the portrait with strong visual impact; may use nested loops or `map()`/`%` | Loops create meaningful repeated elements that support the portrait | Loops present but minimal or not well integrated into the design | Loops missing or not functioning |
| **Control Flow & State** | Skillful use of conditionals and `random()` to create dynamic, responsive behavior; string display with concatenation | Solid use of if-statements and randomness; text displayed | Limited or basic use of conditionals; random present but minimal | No conditionals or randomness |
| **Animation & Variables** | Smooth, purposeful animation using custom variables; built-in variables enhance interactivity; multiple things animate | Clear animation with custom and built-in variables; at least two things change over time | Some animation present but jerky, limited, or only one element moves | Very little or no animation |
| **Interactivity** | Multiple interactive features that feel intentional and enhance the portrait's personality | At least one solid interactive feature (click, key, or mouse position) | Limited or incorrect interactivity | No interactivity |
| **Creative Expression** | Highly original; portrait communicates personality, mood, or identity in a surprising or meaningful way | Creative design choices; shows thoughtfulness about self-representation | Basic portrait with limited personal expression | Generic or underdeveloped; doesn't feel personal |
| **Code Quality** | Well-organized with section comments, descriptive names, and custom function(s); clean and readable | Mostly organized; descriptive variable names; few errors | Some organization but messy or hard to follow | Significant errors; no comments; unclear naming |

---

## Getting Started

1. **Sketch on paper first.** What features define you? What's your vibe — colorful and loud? Minimal and clean? Dark and moody? Chaotic and fun?
2. **Start with the face/figure.** Get the basic shapes down in `setup()` and `draw()`.
3. **Add one loop.** Pick the easiest repeated element (background pattern, hair, freckles) and loop it.
4. **Add animation.** Make one thing move using a variable that changes in `draw()`.
5. **Add interactivity.** Pick one thing that changes on click or key press.
6. **Polish.** Add color, details, text, and personality. This is where it goes from "assignment" to "art."
