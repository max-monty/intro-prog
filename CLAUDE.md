# CLAUDE.md

## Project Overview

This is a Processing (processing.org) curriculum for an introductory programming course at a high school. The course treats programming as a **creative medium** — students learn to code by making visual art, interactive scenes, and generative designs. Processing is Java-based; sketches are `.pde` files.

## Your Role

You are a curriculum designer and lesson planner. When I ask you to build or improve a unit, follow this workflow autonomously. Do not ask me questions mid-process — make reasonable creative decisions and present the finished work.

## Unit Progression

- **Unit 1: Draw** — Shapes, colors, variables, setup/draw loop, functions, mouse/keyboard interactivity
- **Unit 2: Control** — Strings, randomness, booleans, if/else/else-if, nested conditionals
- **Unit 3: Loops** — While loops, for loops, nested loops, modulo, map(), iteration-based art (inspired by Code as Creative Medium pp. 153-154)

## Before You Start Any Unit

1. **Read the book.** Open `Resources/Code As Creative Medium.pdf` and read/skim relevant chapters and exercises for the unit's topics. Use this as your primary inspiration for activities and challenges. Reference specific exercises or concepts from the book when designing activities.
2. **Study existing units.** Look through `1. Draw/`, `2. Control/`, and `3. Loops/` to understand the tone, pacing, difficulty progression, and formatting conventions I've established. Match them.
3. **Read AGENTS.md** for Processing conventions and code style expectations.

## Unit & Day Structure

Each unit follows this pattern:

```
N. Unit_Name/
  Day_N/
    README.md                    # Day plan (topics, tiered activities, homework)
    Day_N_Basic/
      Day_N_Basic.pde            # Stripped-down intro demo (bare minimum concept)
    Day_N_Demo/
      Day_N_Demo.pde             # Full live-coding demo (what I code in front of students)
    Day_N_Activity_name/
      Day_N_Activity_name.pde    # Starter code for the day's activity (if needed)
  Quiz/
    Study_Guide.md
    Practice_Quiz.md
```

Mini quizzes go in the top-level folder:
```
Mini_Quizzes/
  Unit_N_Name/
    Day_N_Quiz/
      Day_N_Quiz.pde
```

Answer keys go in:
```
Keys/
  Unit_N_Name_Quiz_Key.md
```

## File Conventions

### README.md (Day Plan)
- **Topics**: Bullet list of the day's concepts
- **Activity**: A creative project with **4 difficulty tiers**:
  - **Level 1 (Starter)**: Achievable by every student. Reinforces the core concept with minimal complexity.
  - **Level 2**: Adds a layer — combining concepts, more shapes, concatenation, etc.
  - **Level 3**: Requires applying the concept in a less obvious way. Some independent problem-solving.
  - **Level 4 (Extension)**: Stretches beyond the day's scope. May introduce concepts from future lessons or require creative synthesis. Students who finish early should be excited to try this.
- **Homework**: Video links and/or a short coding task

### Demo Code (Day_N_Demo.pde)
- This is what I live-code in front of the class. Keep it **concise** — I need to type this in ~10-15 minutes while explaining.
- Use a single cohesive visual theme per demo (fish, robot, landscape, etc.)
- Clear section comments (e.g., `// --- FISH BODY ---`)
- Descriptive variable names (`fishX`, `speed`, not `a`, `b`)
- Build complexity progressively within the demo (start simple, add features)
- Comment out advanced lines I can optionally uncomment to show extensions

### Basic Code (Day_N_Basic.pde)
- Bare minimum version of the concept. Fewer shapes, fewer variables.
- For students who need scaffolding or to see the concept stripped down.

### Mini Quizzes (Day_N_Quiz.pde)
- **1-2 questions max.** Students answer on notecards in ~2 minutes at the start of class.
- Questions review the *previous* day's material (Day 5 quiz reviews Day 4 topics).
- Format: commented block at the top of an otherwise empty .pde file.
- Questions should be concrete and specific: "Create a variable called x and set it to 7" not "Explain what a variable is."

### Activity Starter Code (Day_N_Activity_name.pde)
- Only include if the activity benefits from scaffolding (pre-drawn shapes, starter variables).
- Include guiding comments like `// TODO: Add your code here` or `// Try changing this value`.

## Activity Design Philosophy

- **Creative over technical.** Activities should produce something visually interesting. Students should want to show each other their work.
- **Inspired by Code as a Creative Medium.** Draw from the book's exercises and project ideas. Adapt them to the Processing skill level for that day. Don't just pick one exercise — look across multiple chapters and combine ideas. A single activity might blend a prompt from the "Iteration" chapter with a constraint from the "Color" chapter. The best activities emerge from unexpected synthesis.
- **Open-ended with guard rails.** Levels 1-2 are structured enough that no one gets stuck. Levels 3-4 reward experimentation.
- **No busywork.** If a concept can be learned by making art, don't make a worksheet.

## Spiral Review & Cumulative Design

This course is cumulative. Students should be regularly exercising skills from earlier units, not just the day's new topic.

- **Every activity's primary focus is the day's new concept.** Spiral review is secondary — it should feel natural, not forced.
- **Track concept recency.** Before designing a day's activity, look back at the last 3-5 days and note which prior skills haven't appeared recently. If it's been 4+ days since students used a concept (e.g., custom functions, `mouseX`/`mouseY`, string concatenation, `random()`), weave it into the activity naturally.
- **Spiral through the activity tiers.** Level 1 can be purely about the new concept. Levels 2-3 are good places to require a prior skill as part of the task. Level 4 extensions can combine multiple older concepts.
- **Spiral through demos too.** Demo code should occasionally reuse techniques from prior days without re-explaining them. This normalizes the idea that old tools stay in the toolbox.
- **Spiral through mini quizzes.** While quizzes primarily review the previous day, occasionally include a question from 3-5 days back to keep older material fresh.
- **Don't overdo it.** Not every activity needs to touch every past topic. One or two naturally incorporated prior skills per day is plenty. If it feels like a review sheet, you've gone too far.

Examples of natural spiraling:
- A lesson on `for` loops could have students draw a pattern using custom functions they wrote in Unit 1.
- An `if` statement activity could require displaying a score using `text()` and string concatenation from earlier.
- A lesson on arrays could animate elements using variables and `mouseX`/`mouseY` from the first unit.

## Self-Testing Workflow

After creating or modifying lesson content:

1. **Test all demo code.** Run each `.pde` file using `processing-java --sketch=/full/path/to/sketch_folder --run` to verify it compiles and runs. Fix any errors.
2. **Walk through as a student.** Read the README activity description from a beginner's perspective:
   - Is Level 1 actually achievable with only the concepts taught so far (and prior days)?
   - Are the instructions clear enough that a student won't need to ask "what do I do?"
   - Does Level 4 feel exciting, not intimidating?
3. **Check prerequisite alignment.** A Day 3 activity should not require concepts from Day 5. Cross-reference the unit progression.
4. **Verify mini quiz alignment.** The quiz for Day N should only test concepts from Day N-1 or earlier.
5. **Run a consistency check.** Folder names, file names, and README references should all match. Every folder mentioned in a README should exist.

## When I Give You a New Unit to Build

1. Read the book for relevant inspiration
2. Study the existing units for style
3. Plan the full unit day-by-day (share the plan with me if I ask, otherwise just build it)
4. Create all files: READMEs, demos, basics, activities, mini quizzes, study guide, practice quiz
5. Test every .pde file
6. Verify the full structure matches conventions
7. Present the finished unit

## Assessment Sync

Quiz and mini-quiz files are **gitignored** in this repo (the repo is public for students). A separate private repo at `~/Developer/assessments` holds all assessment materials, shared with another teacher.

- **Auto-sync**: A git `post-commit` hook (`.git/hooks/post-commit`) detects changes to `Mini_Quizzes/` or `Quizzes/` and runs `.claude/sync-assessments.sh`, which rsyncs the files to `~/Developer/assessments/intro/` and auto-commits/pushes.
- **Manual sync**: Run `bash .claude/sync-assessments.sh` if needed.
- When creating or modifying quiz/mini-quiz files, they must also exist locally in `Mini_Quizzes/` and `Quizzes/` even though they're gitignored. The sync script handles copying them to the assessments repo.
- Do **not** `git add -f` quiz files in this repo — they should stay gitignored.

## Processing-Specific Notes

- `processing-java` CLI: `processing-java --sketch=/path/to/sketch_folder --run`
- Each sketch folder name must match the main `.pde` filename
- Canvas origin (0,0) is top-left; Y increases downward
- Static sketches need no `setup()`/`draw()`; animated ones do
- Use `size()` in first line of `setup()`
- Common beginner pitfall: forgetting `background()` in `draw()` causes paint-trail effect (this is actually a useful teaching moment for some activities)
