# Day 1: String Variables

## Topics
- String data type and declaration
- Concatenation with the `+` operator
- Using strings with `text()` function
- String variables vs numeric variables
- Displaying dynamic text on screen

---

## Activity: Poetic Code Generator

Create an interactive visual poem generator that displays text as art. Your strings become the building blocks for generative visual poetry!

### Level 1: Hello, Artist
Create a simple sketch that displays your name and a creative title using string variables.
- Declare at least 3 string variables (name, title, message)
- Display them on screen using `text()` at different positions
- Use `textSize()` to make the title larger than other text
- Add color using `fill()` before each `text()` call

### Level 2: Word Painter
Build layered text compositions using string concatenation.
- Create 5+ word variables (nouns, verbs, adjectives)
- Concatenate them to form unexpected sentences
- Position sentences at different locations to create visual interest
- Use different colors for different parts of speech (nouns = blue, verbs = red, etc.)

### Level 3: Typewriter Effect
Make your text appear letter by letter or word by word.
- Use `mouseX` to control how much of a long string is displayed
- Use `substring()` or string length to reveal text progressively
- Add visual effects (changing colors, sizes) as text is revealed
- Create multiple lines that reveal at different rates

### Level 4: Generative Poetry Machine
Create a visual poem that changes every time you click.
- Store multiple word options in different string variables
- Use `keyPressed()` to swap between different word combinations
- Layer semi-transparent text to create depth
- Add movement - text that drifts, pulses, or responds to mouse position
- Create a "snapshot" feature that freezes your favorite combination

---

## Starter Code
Open `Day_1_Activity_poetry/Day_1_Activity_poetry.pde` to begin.

## Homework
- [Random() Video (~11')](https://www.youtube.com/watch?v=50Rzvxvi8D0)
- and or [Coding Traing 1:53 -> 2:02 Random Numbers](https://www.youtube.com/watch?v=4JzDttgdILQ)
- Code: A sketch with your name big and bolded in the center
