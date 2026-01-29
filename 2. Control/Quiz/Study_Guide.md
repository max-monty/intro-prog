# Unit 2: Control - Study Guide

## Key Concepts & Definitions

### String Variables
- **String**: A data type that holds text (sequences of characters)
- **Declaration**: `String variableName = "text value";`
- **Concatenation**: Combining strings using the `+` operator
- Strings must be enclosed in double quotes `"like this"`
- Numbers can be concatenated with strings: `"Score: " + 85` → `"Score: 85"`

### Randomness
- **random(max)**: Returns a random float from 0 to max (not including max)
- **random(min, max)**: Returns a random float from min to max
- **int()**: Converts a float to an integer (removes decimal)
- Random values are different each time the program runs
- Use `int(random(1, 7))` to simulate a dice roll (1-6)

### Boolean Variables
- **boolean**: A data type that can only be `true` or `false`
- **Declaration**: `boolean variableName = true;`
- Used to track states (on/off, active/inactive)
- **Toggle**: `variableName = !variableName;` (flips true↔false)

### Comparison Operators
| Operator | Meaning |
|----------|---------|
| `==` | Equal to |
| `!=` | Not equal to |
| `<` | Less than |
| `>` | Greater than |
| `<=` | Less than or equal to |
| `>=` | Greater than or equal to |

### If Statements
- **if statement**: Executes code only when a condition is true
- Syntax:
```processing
if (condition) {
  // code runs if condition is true
}
```

### If-Else Statements
- **if-else**: Provides an alternative when condition is false
- Syntax:
```processing
if (condition) {
  // code runs if true
} else {
  // code runs if false
}
```

### If-Else If-Else Chains
- Tests multiple conditions in order
- First true condition "wins" - only one block executes
- Syntax:
```processing
if (condition1) {
  // runs if condition1 is true
} else if (condition2) {
  // runs if condition1 false AND condition2 true
} else if (condition3) {
  // runs if both above false AND condition3 true
} else {
  // runs if ALL conditions are false
}
```

### Nested If Statements
- An if statement inside another if statement
- Used when you need to check conditions in sequence
- Syntax:
```processing
if (outerCondition) {
  if (innerCondition) {
    // runs only if BOTH conditions are true
  }
}
```

### Logical Operators
| Operator | Name | Meaning |
|----------|------|---------|
| `&&` | AND | Both conditions must be true |
| `\|\|` | OR | At least one condition must be true |
| `!` | NOT | Reverses true/false |

---

## Syntax Reference

### String Operations
```processing
// Declaration
String name = "Alice";
String greeting = "Hello";

// Concatenation
String message = greeting + ", " + name + "!";  // "Hello, Alice!"

// With numbers
int score = 100;
String result = "Score: " + score;  // "Score: 100"

// Display
text(message, 200, 150);
```

### Random Values
```processing
// Random float from 0 to 99.999...
float r = random(100);

// Random float from 50 to 149.999...
float r = random(50, 150);

// Random integer from 1 to 6 (dice roll)
int dice = int(random(1, 7));

// Random position
float x = random(width);
float y = random(height);

// Random color
fill(random(256), random(256), random(256));
```

### Boolean Operations
```processing
// Declaration
boolean isActive = true;
boolean gameOver = false;

// Toggle
isActive = !isActive;  // true → false, false → true

// In conditions
if (isActive) {
  // runs when isActive is true
}

if (!gameOver) {
  // runs when gameOver is false
}
```

### Comparison Examples
```processing
int x = 10;

x == 10   // true (equals)
x != 5    // true (not equals)
x < 15    // true (less than)
x > 5     // true (greater than)
x <= 10   // true (less than or equal)
x >= 10   // true (greater than or equal)
```

### Logical Operator Examples
```processing
int age = 25;
boolean hasID = true;

// AND - both must be true
if (age >= 21 && hasID) {
  // runs only if 21+ AND has ID
}

// OR - at least one must be true
if (age < 13 || age >= 65) {
  // runs if under 13 OR 65+
}

// NOT - reverses condition
if (!hasID) {
  // runs if hasID is false
}
```

---

## Common Patterns

### State Toggle with keyPressed
```processing
boolean lightOn = false;

void keyPressed() {
  if (key == ' ') {
    lightOn = !lightOn;  // Toggle on space
  }
}
```

### Grade Calculator Pattern
```processing
if (score >= 90) {
  grade = "A";
} else if (score >= 80) {
  grade = "B";
} else if (score >= 70) {
  grade = "C";
} else if (score >= 60) {
  grade = "D";
} else {
  grade = "F";
}
```

### Mouse Zone Detection
```processing
if (mouseX < width/2) {
  // Left side
} else {
  // Right side
}
```

### Nested Zone Detection
```processing
if (mouseX > 100 && mouseX < 300) {
  if (mouseY > 100 && mouseY < 200) {
    // Inside the box
  }
}
```

### Random with Constraints
```processing
// Random bright color only
float r = random(150, 256);
float g = random(150, 256);
float b = random(150, 256);

// Random position within a region
float x = random(100, 300);  // Between x=100 and x=300
```

---

## Quick Reference: Common Mistakes

| Mistake | Correct |
|---------|---------|
| `if (x = 5)` | `if (x == 5)` - use == for comparison |
| `String s = hello` | `String s = "hello"` - strings need quotes |
| `if x > 5` | `if (x > 5)` - conditions need parentheses |
| `if (x > 5);` | `if (x > 5)` - no semicolon after condition |
| `random(1, 6)` for dice | `int(random(1, 7))` - use 7 to include 6 |
| Checking ranges wrong order | Check specific ranges first (90+, then 80+, etc.) |

---

## Practice Checklist

- [ ] I can declare and use String variables
- [ ] I can concatenate strings with text and numbers
- [ ] I can use random() to generate random values
- [ ] I can convert random floats to integers with int()
- [ ] I can declare and use boolean variables
- [ ] I can toggle a boolean value
- [ ] I can write if statements with comparison operators
- [ ] I can write if-else statements
- [ ] I can write if-else if-else chains
- [ ] I can nest if statements inside other if statements
- [ ] I can use && (AND) to require multiple conditions
- [ ] I can use || (OR) to allow alternative conditions
- [ ] I can use ! (NOT) to reverse a condition
- [ ] I can trace through conditional code and predict output

---

## Key Vocabulary

| Term | Definition |
|------|------------|
| String | Data type for text |
| Concatenation | Combining strings with + |
| Boolean | Data type for true/false |
| Condition | Expression that evaluates to true or false |
| Comparison operator | Symbols that compare values (==, <, >, etc.) |
| Logical operator | Symbols that combine conditions (&&, \|\|, !) |
| Nested | One structure inside another |
| Toggle | Switch between two states |
| random() | Function that returns a random number |
