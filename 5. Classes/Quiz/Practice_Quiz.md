# Unit 5: Classes & Objects — Practice Quiz

**50 points | 45 minutes**

---

## Part 1: Multiple Choice (20 points — 2 points each)

**1.** Which statement is true?

- a) A class is a thing; an object is a blueprint for classes.
- b) A class is a blueprint; an object is a specific thing built from the class.
- c) A class and an object are the same thing.
- d) You can have many classes but only one object per class.

---

**2.** What is the purpose of a **constructor**?

- a) It destroys an object at the end of its life.
- b) It's a method that runs every frame while the object is alive.
- c) It runs once when `new ClassName(...)` is called; its job is to set up the object's instance variables.
- d) It's the only method that can return a value.

---

**3.** Given this class, which line correctly creates a new `Star` and stores it in `s`?

```processing
class Star {
  float x, y;
  Star(float sx, float sy) {
    x = sx;
    y = sy;
  }
}
```

- a) `Star s = Star(100, 50);`
- b) `s = new Star;`
- c) `Star s = new Star(100, 50);`
- d) `new Star s(100, 50);`

---

**4.** Given this class, what does `println(p.y)` print after the code runs?

```processing
class Point {
  float x, y;
  Point(float sx, float sy) {
    x = sx;
    y = sy;
  }
}

Point p = new Point(20, 80);
```

- a) 20
- b) 80
- c) 0
- d) An error — `y` isn't defined

---

**5.** What is the return type of this method?

```processing
boolean isEmpty() {
  return count == 0;
}
```

- a) `void`
- b) `int`
- c) `boolean`
- d) `String`

---

**6.** Given this class, what does the sketch draw?

```processing
class Dot {
  float x, y;
  Dot(float sx, float sy) { x = sx; y = sy; }
  void show() { circle(x, y, 20); }
}

Dot a;
Dot b;

void setup() {
  size(400, 400);
  a = new Dot(100, 100);
  b = new Dot(300, 300);
}

void draw() {
  background(240);
  a.show();
  b.show();
}
```

- a) One circle at (100, 100).
- b) One circle at (300, 300).
- c) Two circles: one at (100, 100) and one at (300, 300).
- d) Two overlapping circles at (200, 200).

---

**7.** What does this code print?

```processing
class Counter {
  int n;
  Counter() { n = 0; }
  void tick() { n = n + 1; }
}

Counter a = new Counter();
Counter b = new Counter();
a.tick();
a.tick();
a.tick();
b.tick();
println(a.n + " " + b.n);
```

- a) `4 4`
- b) `3 1`
- c) `3 3`
- d) `1 3`

---

**8.** A student writes this to remove all "popped" bubbles from an ArrayList, but the sketch skips some bubbles and leaves them on screen. What's wrong?

```processing
for (int i = 0; i < bubbles.size(); i++) {
  if (bubbles.get(i).isPopped()) {
    bubbles.remove(i);
  }
}
```

- a) `isPopped()` should be `void`, not `boolean`.
- b) `remove()` doesn't exist on ArrayLists.
- c) When an element is removed, everything shifts down — the next element slides into index `i`, but the loop moves on to `i+1` and skips it. Loop backward to fix it.
- d) The `for` loop should use `i--` instead of `i++`.

---

**9.** What is the return type of a method that does something but gives no value back?

- a) `boolean`
- b) `float`
- c) `null`
- d) `void`

---

**10.** Given this class, what does the sketch do?

```processing
class Mover {
  float x = 100;
  void step() { x = x + 2; }
}

ArrayList<Mover> movers = new ArrayList<Mover>();

void setup() {
  size(500, 300);
  for (int i = 0; i < 3; i++) {
    movers.add(new Mover());
  }
}

void draw() {
  background(30);
  for (int i = 0; i < movers.size(); i++) {
    movers.get(i).step();
    circle(movers.get(i).x, 50 + i * 60, 20);
  }
}
```

- a) Three circles, all at x = 100, never moving.
- b) Three circles at different y values, all moving right at the same speed.
- c) One circle moving right.
- d) Three circles stacked at (100, 100).

---

## Part 2: Free Response (30 points)

### 11. Read the Class (8 points)

```processing
class Fish {
  float x, y;
  float speed;

  Fish(float sx, float sy) {
    x = sx;
    y = sy;
    speed = 2;
  }

  void swim() {
    x = x + speed;
  }

  boolean isOffScreen() {
    return x > width;
  }
}
```

**(a)** What are the three **instance variables** of `Fish`? (2 points)

**(b)** What does the `swim()` method do, and what is its return type? (2 points)

**(c)** What does `isOffScreen()` return, and when does it return `true`? (2 points)

**(d)** A sketch creates `Fish f = new Fish(0, 100);` and calls `f.swim()` three times. What is `f.x` after those three calls? (2 points)

---

### 12. Debug and Explain (6 points)

A student wrote a `Coin` class and a sketch using it. The sketch crashes with an error.

```processing
class Coin {
  float x, y;
  Coin(float sx, float sy) {
    x = sx;
    y = sy;
  }
  void show() {
    fill(255, 200, 0);
    circle(x, y, 20);
  }
}

Coin c;

void setup() {
  size(400, 400);
  c = Coin(100, 100);
}

void draw() {
  background(50);
  Coin.show();
}
```

**(a)** Identify the two mistakes in `setup()` and `draw()`. (4 points)

**(b)** Rewrite the two broken lines correctly. (2 points)

---

### 13. Write a Class From Scratch (8 points)

Write a class called **`Firefly`** with:

- Three instance variables: `x` (float), `y` (float), `brightness` (float).
- A **constructor** that takes a starting x and y, and sets `brightness` to a random number between 100 and 255.
- A method `void flicker()` that adds a small random number (between -10 and 10) to `brightness` and then **constrains** it between 0 and 255 (use `constrain()`).
- A method `void show()` that draws a circle at `(x, y)` with diameter 10, filled with `fill(255, 255, 0, brightness)` (yellow with varying transparency).

Write the full class. You do NOT need to write `setup()` or `draw()`.

---

### 14. Complete the Sketch (8 points)

This sketch spawns `Raindrop` objects on click, animates them falling, and removes them when they go offscreen. Fill in **Blank A** and **Blank B**.

```processing
ArrayList<Raindrop> drops = new ArrayList<Raindrop>();

void setup() {
  size(500, 400);
}

void draw() {
  background(20, 40, 60);

  // ---- BLANK A (5 pts) ----
  // Loop through drops BACKWARD.
  // For each drop:
  //   - call fall()
  //   - call show()
  //   - if isOffScreen() returns true, remove it from the list

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________

  _______________________________________________
}

void mousePressed() {
  // ---- BLANK B (3 pts) ----
  // Add a new Raindrop at the mouse position

  _______________________________________________
}

class Raindrop {
  float x, y;
  Raindrop(float sx, float sy) { x = sx; y = sy; }
  void fall() { y = y + 5; }
  void show() { stroke(180, 200, 255); line(x, y, x, y + 8); }
  boolean isOffScreen() { return y > height; }
}
```

---

## Answer Key

### Part 1: Multiple Choice

**1. b)** A class is a blueprint; an object is a specific thing built from it. Like a cookie cutter and a cookie.

**2. c)** The constructor runs once when you say `new ClassName(...)`. Its purpose is to initialize the new object's instance variables.

**3. c)** `Star s = new Star(100, 50);` — you need the type (`Star`), the variable name (`s`), the `new` keyword, and the constructor call with arguments. Option (a) is missing `new`; (b) has no arguments and wrong syntax; (d) has wrong order.

**4. b)** 80. The constructor sets `y = sy`, and the argument passed for `sy` was 80.

**5. c)** `boolean`. The return type is always the first word in a method signature. `isEmpty` returns a boolean.

**6. c)** Two circles — one at (100, 100) and one at (300, 300). `a` and `b` are **separate objects**, each with their own `x` and `y`.

**7. b)** `3 1`. Each `Counter` has its own `n`. `a.tick()` runs three times → `a.n = 3`. `b.tick()` runs once → `b.n = 1`.

**8. c)** When `remove(i)` runs, everything after index `i` slides down by one. The element that *was* at `i+1` is now at `i`, but the loop advances to `i+1` and skips it. Fix: loop backward — `for (int i = list.size() - 1; i >= 0; i--)`.

**9. d)** `void`. It's the special return type meaning "this method returns nothing."

**10. b)** Three circles at three different y positions, all moving right at the same speed. Each Mover has its own `x` (initialized to 100). Each frame the loop calls `step()` on every Mover, incrementing their `x` by 2. The y of each drawn circle depends on `i`, so they appear at different vertical positions.

### Part 2: Free Response

**11.**

**(a)** (2 pts) `x`, `y`, and `speed` are the three instance variables.

**(b)** (2 pts) `swim()` adds `speed` to `x` — it moves the fish horizontally to the right. Its return type is `void` (returns nothing).

**(c)** (2 pts) `isOffScreen()` returns a `boolean`. It returns `true` when `x > width` — i.e., when the fish has swum past the right edge of the canvas.

**(d)** (2 pts) `f.x = 6`. The fish starts at `x = 0`, and each `swim()` call adds `speed` (2). Three calls → 0 + 2 + 2 + 2 = 6.

---

**12.**

**(a)** (4 pts — 2 each)
- In `setup()`, `c = Coin(100, 100);` is missing `new`. You must write `c = new Coin(100, 100);`.
- In `draw()`, `Coin.show();` uses the **class name** instead of the **object name**. You can't call an instance method on the class itself — you have to call it on an object: `c.show();`.

**(b)** (2 pts — 1 each)
```processing
c = new Coin(100, 100);
c.show();
```

---

**13.** (8 pts)

```processing
class Firefly {
  float x, y;
  float brightness;

  Firefly(float sx, float sy) {
    x = sx;
    y = sy;
    brightness = random(100, 255);
  }

  void flicker() {
    brightness = brightness + random(-10, 10);
    brightness = constrain(brightness, 0, 255);
  }

  void show() {
    noStroke();
    fill(255, 255, 0, brightness);
    circle(x, y, 10);
  }
}
```

Rubric: 2 pts correct class declaration + instance variables, 2 pts constructor with parameters and random brightness, 2 pts `flicker()` method (random change + constrain), 2 pts `show()` method with correct `fill()` and `circle()`.

---

**14.**

**Blank A** (5 pts):
```processing
for (int i = drops.size() - 1; i >= 0; i--) {
  Raindrop d = drops.get(i);
  d.fall();
  d.show();
  if (d.isOffScreen()) {
    drops.remove(i);
  }
}
```

Rubric: 1 pt backward loop header, 1 pt calling `fall()`, 1 pt calling `show()`, 1 pt calling `isOffScreen()`, 1 pt `remove(i)` inside the `if`.

**Blank B** (3 pts):
```processing
drops.add(new Raindrop(mouseX, mouseY));
```

Rubric: 1 pt `drops.add(...)`, 1 pt `new Raindrop(...)`, 1 pt passing `mouseX` and `mouseY`.
