# Project: Build a Game

You've spent the semester building shapes, animations, and interactive sketches. Now you're going to build a game with a goal, a way to win, a way to lose, etc.

The bar is simple: build a game that works and uses the major concepts from the course. The ceiling is high — make something you'd actually want to show a friend.

---

## What Counts as a Game?

A game has three things:
1. **A goal** — something the player is trying to do (survive, collect, score, escape, reach the end)
2. **Controls** — keyboard, mouse, or both
3. **An end state** — you win, you lose, or both

That's it. A game can be 30 seconds long. It doesn't need menus, music, or levels. It needs to be *playable*.

---

## Inspiration

Click any of these to play. Notice how simple most of them are — one screen, one mechanic, one goal.

- [Pong](https://www.ponggame.org/) — paddle bounces a ball
- [Snake](https://www.google.com/search?q=snake+game) — eat food, grow longer, don't crash
- [Flappy Bird](https://flappybird.io/) — tap to flap, dodge pipes
- [Asteroids](https://www.freeasteroids.org/) — shoot rocks, don't get hit
- [Frogger](https://froggerclassic.appspot.com/) — cross the road without dying
- [Breakout](https://elgoog.im/breakout/) — bounce a ball, break bricks
- [Doodle Jump](https://doodle-jump.co/) — jump up platforms forever
- [Crossy Road](https://poki.com/en/g/crossy-road) — Frogger with style

You don't need to copy any of these. Pick one as a starting point and make it yours, or invent something completely new.

### Want a Bigger Challenge?

If a basic arcade game feels too easy, *Code as a Creative Medium* offers some prompts that push your design thinking. See resources for a PDF of CACM for ideas.

---

## Step 1: Plan Your MVP

**MVP = Minimum Viable Product.** The smallest version of your game that's still a game. Not the dream version — the *playable* version.

Before you write a single line of code, answer these on paper:

### 1. Pitch it in one sentence
> "You play as a ___ trying to ___ while avoiding ___."

Examples:
- "You play as a fish trying to eat smaller fish while avoiding bigger ones."
- "You play as a knight trying to reach the castle while dodging arrows."
- "You play as a cat trying to knock cups off a table without falling off yourself."

### 2. List your objects (your future classes)
What *things* exist in your game? Each one is probably a class.

Example for a fish game:
- `Player` — the fish you control
- `Food` — small fish you eat
- `Enemy` — big fish that eat you

### 3. For each object, list its **data** and its **behavior**

| Object | Data (fields) | Behavior (methods) |
|---|---|---|
| Player | x, y, size | move(), display(), grow() |
| Food | x, y, color | drift(), display() |
| Enemy | x, y, speed, size | swim(), display(), hitsPlayer() |

### 4. Define win and lose
- **Lose:** an enemy touches the player
- **Win:** player reaches size 100 (or "no win condition, just survive as long as possible" is fine too)

### 5. Cut everything else
Want power-ups? Levels? A shop? **Cut them.** Get the MVP working first. Add extras only after the core game plays.

---

## Requirements

Your game must use **all** of the following concepts from the course. They should appear naturally — don't force them in just to check a box.

| Concept | Where it shows up in a game |
|---|---|
| **Variables** | Score, lives, timers, game state (`gameOver`, `paused`) |
| **Conditionals** | Collisions, win/lose checks, input handling, boundaries |
| **Loops** | Iterating through enemies, bullets, obstacles, particles |
| **Arrays or ArrayLists** | A collection of objects (enemies, projectiles, collectibles) |
| **Classes** | At least **2 classes** — usually a `Player` and one other (`Enemy`, `Coin`, `Obstacle`, etc.) |
| **Custom functions** | Reset the game, draw the HUD, spawn enemies, etc. |

### It Must Work
- Runs without errors
- Has clear controls (keyboard, mouse, or both)
- Has a clear way to win, lose, or both
- Player can restart without quitting and reopening (e.g., press R)

### Code Quality
- Each class lives in its own `.pde` tab
- Descriptive variable and method names (`speed`, `hitsPlayer()` — not `s`, `check()`)
- Section comments where helpful
- No giant blob of code in `draw()` — use methods and functions

---

## Level Guide

### Level 1: It's a Game
- One player class, one other class
- Player moves with keyboard or mouse
- Some kind of collision or interaction (touching, catching, hitting)
- Score or lives displayed on screen
- Clear win or lose condition
- Restart works

### Level 2: It's a *Good* Game
- Multiple instances of an enemy/collectible class (using an array or ArrayList)
- Difficulty changes over time (things get faster, more spawn, etc.)
- Game feels balanced — not impossible, not trivial
- Visual polish: intentional colors, a background, readable text

### Level 3: It's Actually Fun
- Three or more classes interacting (e.g., Player + Bullet + Enemy)
- Objects spawn and get removed during gameplay (ArrayList)
- Smooth animation, satisfying feedback (flash on hit, particles, screen shake)
- A start screen, game over screen, and restart all feel intentional

### Level 4: Show Off (optional)
- Power-ups, multiple enemy types, or levels
- Sound effects (`Minim` library or beeps)
- Particle effects, animations, or polish that surprises the player
- Anything that makes you proud to show it off

---

## Rubric

| Criteria | 4 — Excellent | 3 — Solid | 2 — Developing | 1 — Beginning |
|---|---|---|---|---|
| **It Works** | Plays smoothly, no crashes, controls feel responsive, restart works | Plays through start to finish, minor bugs | Playable but buggy or confusing | Crashes, broken controls, or doesn't run |
| **Classes & OOP** | 2+ classes with clear responsibilities; objects interact through methods (e.g., `hitsPlayer()`); data and behavior are well-organized | 2 classes used correctly; clean fields and methods; objects do what they should | Classes present but messy — fields used inconsistently, logic in the wrong place | One class or no real OOP structure |
| **Arrays / ArrayLists** | Collection of objects used naturally; objects spawn and/or get removed during play | Array or ArrayList of objects, looped through correctly | Array used but minimally (e.g., fixed list of 3 things, never changes) | No array or ArrayList |
| **Game Logic** | Conditionals handle collisions, scoring, win/lose, and input cleanly; game state is well managed | Game logic works; conditionals and variables track state correctly | Some logic works but win/lose or scoring is unclear or inconsistent | Game has no real logic — no win, lose, or feedback |
| **Code Quality** | Clean tabs per class; descriptive names; helpful comments; no dead code | Mostly organized; readable names; few errors | Hard to follow; messy or repetitive code | Unreadable, uncommented, or copy-pasted without understanding |
| **Creativity & Polish** | Original concept or fresh take; visual and gameplay choices feel intentional; you'd want to play it again | Familiar concept done well; clear theme; some polish | Generic; works but feels unfinished | No theme; placeholder visuals; clearly rushed |

---

## Getting Started

1. **Plan on paper first.** Pitch sentence, object list, data + behavior table, win/lose. 15 minutes with a pen will save you hours of code.
2. **Build the player first.** One class, one object, controls work. That's it.
3. **Add one other class.** An enemy, a collectible, an obstacle. Make one instance of it.
4. **Add the collection.** Turn that one object into an array or ArrayList of them.
5. **Add the rules.** Collisions, score, lives, game over.
6. **Add restart.** Press a key to reset everything.
7. **Polish.** Background, colors, text, feedback. This is where MVP becomes a game people want to play.

---

## A Note on Scope

The most common mistake on this project: **trying to build too much.**. Pick something you can finish in the time you have, get it working, *then* add more. A polished tiny game beats a half-finished big one every time.
