# ArrayLists in Processing

## Part 2: Looping & Full Examples

*Intro to Programming*

---

## 1. Looping Through an ArrayList

### Standard For Loop

You can loop through an ArrayList with a regular for loop. The only differences from a regular array are that you use `.size()` instead of `.length`, and `.get(i)` instead of `[i]`:

```java
ArrayList<Float> temps = new ArrayList<Float>();
temps.add(72.5);
temps.add(68.1);
temps.add(75.3);

for (int i = 0; i < temps.size(); i++) {
  println("Temp " + i + ": " + temps.get(i));
}
```

This would print:

```
Temp 0: 72.5
Temp 1: 68.1
Temp 2: 75.3
```

### Looping Backwards to Remove Items

**This is one of the most important patterns you'll learn with ArrayLists.** When you remove an item from an ArrayList inside a loop, the indices shift. If you're looping forward, this can cause you to skip items or go out of bounds. The fix? **Loop backwards.**

Here's an example that removes all temperatures below 70:

```java
for (int i = temps.size() - 1; i >= 0; i--) {
  if (temps.get(i) < 70) {
    temps.remove(i);
  }
}
```

Why does this work? When you remove an item, everything after it shifts left. But since you're moving from right to left, the items you haven't checked yet (to the left) are unaffected. Nothing gets skipped.

> **💡 Rule of Thumb**
>
> If you're just reading values, loop forwards. If you're removing items, loop backwards.

---

## 2. Putting It All Together

Let's look at a complete Processing sketch that uses an ArrayList. In this sketch, a new circle drops from a random x-position each frame. When a circle goes off the bottom of the screen, it gets removed. This is the kind of program where ArrayLists are essential—you can't know in advance how many circles you'll need.

```java
ArrayList<Float> xPositions = new ArrayList<Float>();
ArrayList<Float> yPositions = new ArrayList<Float>();

void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  // Add a new circle every 10 frames
  if (frameCount % 10 == 0) {
    xPositions.add(random(width));
    yPositions.add(0.0);
  }

  // Update and draw all circles
  for (int i = 0; i < xPositions.size(); i++) {
    // Move the circle down
    yPositions.set(i, yPositions.get(i) + 2);

    // Draw it
    ellipse(xPositions.get(i), yPositions.get(i), 20, 20);
  }

  // Remove circles that are off-screen (loop backwards!)
  for (int i = xPositions.size() - 1; i >= 0; i--) {
    if (yPositions.get(i) > height) {
      xPositions.remove(i);
      yPositions.remove(i);
    }
  }
}
```

Notice a few things about this example:

1. We use two parallel ArrayLists—one for x-positions and one for y-positions. The circle at index `i` has its x stored in `xPositions.get(i)` and its y in `yPositions.get(i)`.
2. We add new circles with `.add()` and update existing circles with `.get()` and `.set()`.
3. We remove off-screen circles in a backwards loop to avoid index problems.
4. When we remove from one ArrayList, we remove the same index from the other so they stay in sync.

---

## 3. Quick Reference

Here's a cheat sheet of the ArrayList methods you need to know:

| Method | What It Does | Example |
|---|---|---|
| `.add(value)` | Adds to the end | `nums.add(42)` |
| `.add(index, value)` | Inserts at index | `nums.add(0, 10)` |
| `.get(index)` | Returns value at index | `int x = nums.get(2)` |
| `.set(index, value)` | Replaces value at index | `nums.set(0, 99)` |
| `.remove(index)` | Removes item at index | `nums.remove(3)` |
| `.size()` | Returns number of items | `nums.size()` |

---

## 4. Check Your Understanding

After reading both parts of this reader, you should be able to answer these questions. Try them before our next class!

1. Why should you loop **backwards** when removing items from an ArrayList?

2. What would happen if the falling circles sketch looped forwards instead of backwards when removing off-screen circles? Describe the bug.

3. In the falling circles example, why do we need two ArrayLists instead of one? What information would we lose with only one?

4. Write a short Processing snippet that creates an `ArrayList<Integer>`, adds the values 10, 20, 30, and 40, then removes all values greater than 25. What does the ArrayList contain afterwards?

---

*Happy coding! 🚀*
