# Unit 4: Arrays & ArrayLists — Study Guide

## Big Ideas

This unit is about one fundamental question:

**How do programs manage collections of related data?** (Data Structures)

### Why Arrays and ArrayLists Matter

Without arrays, tracking 100 bouncing balls means 100 separate variables: `x0, x1, x2, ...`. With an array, one variable holds all of them — and a loop can process every element in a few lines. Arrays let you think about **groups** of things instead of individual pieces.

The key insight: **arrays pair naturally with loops.** A for loop that counts from 0 to `length - 1` can visit every element, draw every shape, or update every position. Most array code is just a loop with indexing inside.

### Arrays vs ArrayLists: Fixed vs Flexible

- **Arrays** have a fixed size set when they're created. You can read and update elements, but you can't add or remove them. Use arrays when the amount of data is known up front.
- **ArrayLists** can grow and shrink at any time with `.add()` and `.remove()`. Use ArrayLists when the amount of data changes during the program — objects spawning, objects disappearing, user clicks adding new things.

The choice between them is about whether the collection's size changes, not what kind of data you're storing.

### Data Structures + Prior Concepts

The most interesting data programs combine collections with other tools:
- **Arrays + loops** → process every element with a few lines of code
- **Arrays + conditionals** → search for specific values (find the max, filter elements)
- **Arrays + map()** → convert index or stored value into visual properties
- **Parallel arrays** → multiple arrays where index `i` in each array describes one "object"
- **ArrayLists + mouse interaction** → click to create, hover to destroy
- **ArrayLists + physics** → gravity, velocity, and bouncing for dynamic collections

---

## Building on Units 1–3

| Prior Concept | How It Connects to Arrays & ArrayLists |
|---------------|----------------------------------------|
| Variables | An array stores many values under one name; each slot is like a variable |
| Loops | A for loop from 0 to `length - 1` processes every element |
| Conditionals | Used inside loops to search, filter, or highlight specific elements |
| `map()` | Converts an index or stored value into a useful visual range |
| `random()` | Fill arrays with random values for organic variation |
| `mouseX`/`mouseY` | Store mouse history in arrays, or add new elements on click |
| Functions | Encapsulate array operations (find max, draw all, update all) |

---

## How to Think Through Array Code

### Strategy 1: Track the Indices

Arrays are **zero-indexed** — the first element is at index 0, the last is at index `length - 1`.

```
float[] vals = {10, 25, 30, 15, 40};
Index:          0   1   2   3   4
vals.length = 5
```

A common mistake is accessing index `length` — that's one past the end.

### Strategy 2: Trace the Loop and the Array Together

When a loop processes an array, write out what happens at each index:

```processing
float[] sizes = {20, 45, 30};
for (int i = 0; i < sizes.length; i++) {
  circle(i * 100, 200, sizes[i]);
}
```

| i | sizes[i] | circle drawn at |
|---|----------|-----------------|
| 0 | 20 | (0, 200) diameter 20 |
| 1 | 45 | (100, 200) diameter 45 |
| 2 | 30 | (200, 200) diameter 30 |

### Strategy 3: Recognize Parallel Arrays

When you see multiple arrays used with the same index, they describe the same "object":

```processing
float[] xPos = {100, 200, 300};
float[] yPos = {150, 250, 350};
float[] speed = {2, -1, 3};
```

Index 0 is one ball (x=100, y=150, speed=2). Index 1 is another ball. The arrays are "parallel" — same index, different properties.

### Strategy 4: Understand the Shifting Pattern

To store a history of values (like a mouse trail), shift everything backward one slot each frame, then put the new value at position 0:

```processing
for (int i = arr.length - 1; i > 0; i--) {
  arr[i] = arr[i - 1];   // each slot gets the value from the slot before it
}
arr[0] = newValue;         // newest value goes in front
```

The loop must go **backward** (from the end toward 0) so you don't overwrite values before they've been copied.

### Strategy 5: Remove Safely from ArrayLists

When removing elements from an ArrayList inside a loop, loop **backward**:

```processing
for (int i = list.size() - 1; i >= 0; i--) {
  if (shouldRemove(i)) {
    list.remove(i);
  }
}
```

Why backward? Removing element `i` shifts everything after it down by one. If you loop forward, you skip the element that just slid into position `i`. Looping backward means the shift only affects indices you've already visited.

---

## Practice Thought Exercises

Try these without running code — just think through them.

**1.** Given `int[] a = {5, 10, 15, 20, 25};` — what is `a[0]`? `a[3]`? `a[5]`? `a.length`?

**2.** A for loop runs `for (int i = 0; i < vals.length; i++)` where `vals` has 6 elements. What values does `i` take? How many iterations?

**3.** Given `float[] h = new float[8];` — what value does `h[3]` start with? How many elements are in the array?

**4.** Two parallel arrays store x and y positions for 5 circles. A loop draws them:
```processing
for (int i = 0; i < xPos.length; i++) {
  circle(xPos[i], yPos[i], 30);
}
```
If you want to move all circles to the right by 2 pixels each frame, what line would you add inside the loop?

**5.** An array stores `{3, 7, 2, 9, 1}`. You want to find the largest value. Walk through the search:
```processing
int maxVal = vals[0];
for (int i = 1; i < vals.length; i++) {
  if (vals[i] > maxVal) {
    maxVal = vals[i];
  }
}
```
What is `maxVal` after each iteration?

**6.** An ArrayList has 4 elements: `["A", "B", "C", "D"]`. You remove index 1. What does the list look like now? What is now at index 1?

**7.** Why does this code skip elements when removing?
```processing
for (int i = 0; i < list.size(); i++) {
  if (someCondition) {
    list.remove(i);
  }
}
```

**8.** Given `ArrayList<Float> bx = new ArrayList<Float>();` — what is `bx.size()` initially? After calling `bx.add(100.0)` three times?

---

### Answers

**1.** `a[0]` = 5, `a[3]` = 20, `a[5]` = error (index out of bounds — valid indices are 0–4), `a.length` = 5.

**2.** i takes values 0, 1, 2, 3, 4, 5. Six iterations (one per element).

**3.** `h[3]` starts with 0.0 (arrays created with `new` are initialized to 0). The array has 8 elements (indices 0–7).

**4.** `xPos[i] = xPos[i] + 2;` (or `xPos[i] += 2;`) — this updates each circle's stored x position.

**5.** Start: `maxVal = 3`. Iteration i=1: `7 > 3` → maxVal = 7. i=2: `2 > 7`? No. i=3: `9 > 7` → maxVal = 9. i=4: `1 > 9`? No. Final maxVal = 9.

**6.** After removing index 1: `["A", "C", "D"]`. "C" is now at index 1 — everything after the removed element shifted down.

**7.** When you remove index `i`, the next element slides into position `i`. Then the loop increments to `i + 1`, skipping the element that just moved into position `i`. Looping backward avoids this because the shift only affects higher indices.

**8.** Initially `bx.size()` = 0 (empty). After three `.add()` calls, `bx.size()` = 3.

---

## Syntax Quick Reference

### Declaring and Initializing Arrays

```processing
// With values
float[] sizes = {20, 45, 30, 60, 15};

// Empty (all zeros), set size
float[] heights = new float[100];
```

### Accessing Array Elements

```processing
float first = sizes[0];        // Read element at index 0
sizes[2] = 50;                 // Update element at index 2
int count = sizes.length;      // Number of elements (no parentheses)
```

### Looping Through an Array

```processing
for (int i = 0; i < myArray.length; i++) {
  // use myArray[i]
}
```

### Creating and Using ArrayLists

```processing
// Create (note: Float, not float)
ArrayList<Float> xPositions = new ArrayList<Float>();

// Add elements
xPositions.add(100.0);
xPositions.add(250.0);

// Read element
float x = xPositions.get(0);

// Update element
xPositions.set(0, 150.0);

// Remove element
xPositions.remove(0);

// Number of elements (parentheses!)
int count = xPositions.size();
```

### Looping Through an ArrayList

```processing
for (int i = 0; i < myList.size(); i++) {
  float val = myList.get(i);
  // use val
}
```

### Backward Loop for Safe Removal

```processing
for (int i = myList.size() - 1; i >= 0; i--) {
  if (shouldRemove) {
    myList.remove(i);
  }
}
```

### Shifting Pattern (Array History)

```processing
// Shift everything back one slot
for (int i = arr.length - 1; i > 0; i--) {
  arr[i] = arr[i - 1];
}
arr[0] = newValue;  // newest at front
```

### Common Parallel Array Pattern

```processing
float[] x = new float[N];
float[] y = new float[N];
float[] speed = new float[N];

// Initialize
for (int i = 0; i < N; i++) {
  x[i] = random(width);
  y[i] = random(height);
  speed[i] = random(1, 5);
}

// Update and draw
for (int i = 0; i < N; i++) {
  y[i] += speed[i];
  circle(x[i], y[i], 20);
}
```

---

## Array vs ArrayList — Quick Comparison

| Aspect | Array | ArrayList |
|--------|-------|-----------|
| Size | Fixed forever | Grows and shrinks |
| Create | `float[] x = new float[10];` | `ArrayList<Float> x = new ArrayList<Float>();` |
| Add | Can't add new elements | `.add(value)` |
| Read | `x[i]` | `.get(i)` |
| Update | `x[i] = value;` | `.set(i, value)` |
| Remove | Can't remove elements | `.remove(index)` |
| Count | `.length` (no parentheses) | `.size()` (parentheses) |
| Type | `float`, `int`, etc. | `Float`, `Integer` (capitalized) |
| Use when | Size is known and constant | Size changes during program |

---

## Key Vocabulary

| Term | Definition |
|------|------------|
| **Array** | A fixed-size collection of values stored under one variable name |
| **ArrayList** | A resizable collection that can grow and shrink with `.add()` and `.remove()` |
| **Index** | The position number of an element in an array or ArrayList (starts at 0) |
| **Zero-indexed** | The first element is at position 0, not 1 |
| **Element** | One value stored inside an array or ArrayList |
| **`.length`** | Property that gives the number of elements in an array (no parentheses) |
| **`.size()`** | Method that gives the number of elements in an ArrayList (with parentheses) |
| **Out of bounds** | Accessing an index that doesn't exist (e.g., index 5 in a 5-element array) |
| **Parallel arrays** | Multiple arrays where the same index across all arrays describes one "object" |
| **Shifting** | Moving all elements backward one slot to make room for a new value at the front |
| **Backward loop** | Looping from the end toward 0; required when removing from an ArrayList |
| **`.add()`** | ArrayList method that appends a new element to the end |
| **`.get(i)`** | ArrayList method that reads the element at index `i` |
| **`.set(i, val)`** | ArrayList method that replaces the element at index `i` with `val` |
| **`.remove(i)`** | ArrayList method that removes the element at index `i` and shifts the rest down |
| **Wrapper type** | `Float`, `Integer` — capitalized versions required for ArrayLists (not `float`, `int`) |
