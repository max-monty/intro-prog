# Unit 5: Classes & Objects — Study Guide

## Big Ideas

This unit is about one fundamental question:

**How do we bundle data and behavior into reusable things?** (Object-Oriented Programming)

### Why Classes Matter

Without classes, everything about one "thing" has to be spread across parallel arrays and loose variables. One ball's x is in `x[3]`, its y is in `y[3]`, its speed is in `xSpeed[3]` — and if you want to add a color, you have to add a whole new array and touch code everywhere.

A **class** bundles the data (instance variables) and the behavior (instance methods) into one reusable blueprint. One `Ball` knows *its own* position, *its own* color, *its own* speed, and *how to draw itself*. Want 100 of them? You change nothing in the class. You just make 100 objects.

The key insight: **a class is a blueprint, not a thing.** You can't drive a blueprint. You build a car from the blueprint and drive the car. Same here: you write the class once, then build as many objects from it as you want.

### Class vs. Object

| | Class | Object |
|---|---|---|
| What it is | Blueprint | Thing built from the blueprint |
| How many | Usually one | As many as you want |
| Has data? | Describes what data will exist | Holds the actual data |
| Created by | Writing `class Ball { ... }` | Calling `new Ball(...)` |
| Example | `class Dog` | `Dog rex = new Dog("Rex");` |

### The Four Ingredients of a Class

1. **Class declaration** — `class Ball { ... }` gives the blueprint a name.
2. **Instance variables** — the data each object will hold (`float x; float y; color c;`).
3. **Constructor** — a special method with the same name as the class. Runs once when you say `new Ball(...)`. Its job is to initialize the instance variables.
4. **Instance methods** — what the object can *do* (`move()`, `show()`, `isHittingEdge()`).

### Methods That Return Values

Some methods *do* something (`move()`, `show()`) — they return `void`. Others *answer* something:

- `boolean isHittingEdge()` — returns `true` or `false`.
- `float speed()` — returns a number.
- `color currentColor()` — returns a color.

The return type goes **before** the method name. Whatever the method returns, the main sketch can use in an `if`, store in a variable, or pass into `fill()`.

```processing
if (ball.isHittingEdge()) {  // uses the boolean return value
  ball.xSpeed = -ball.xSpeed;
}
```

### Classes + ArrayLists: Many Objects

One class produces many objects. Store them in an `ArrayList<ClassName>`. Loop through the list each frame to update and draw every object:

```processing
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  for (int i = 0; i < 10; i++) {
    balls.add(new Ball(4));
  }
}

void draw() {
  for (int i = 0; i < balls.size(); i++) {
    Ball b = balls.get(i);
    b.move();
    b.show();
  }
}
```

### Why Backward Loops When Removing

Same rule as Unit 4: when you remove from an ArrayList, everything after the removed element shifts down. A **forward** loop skips the shifted element. A **backward** loop avoids the problem because removed items are always *after* the current index — they don't disturb what you haven't visited yet.

```processing
for (int i = balls.size() - 1; i >= 0; i--) {
  Ball b = balls.get(i);
  b.move();
  b.show();
  if (b.isOffScreen()) {
    balls.remove(i);
  }
}
```

---

## Building on Units 1–4

| Prior Concept | How It Connects to Classes |
|---|---|
| Variables | Instance variables are just variables that belong to an object |
| Functions | Instance methods are functions that belong to an object |
| `fill()`, `circle()`, etc. | Move these drawing calls inside `show()` so each object can draw itself |
| `if` statements | Use them with `boolean` methods: `if (ball.isHittingEdge())` |
| Random / noise | Great for varying each object's starting position/color/speed in the constructor |
| `mouseX`/`mouseY`, `mousePressed` | Usable inside instance methods (`isHovered`, `isClicked`) |
| For loops | Loop through an array of objects to update and draw them |
| Arrays / ArrayLists | Hold objects the same way they hold numbers — `ArrayList<Ball>` instead of `ArrayList<Float>` |

---

## How to Think Through Class Code

### Strategy 1: Read the Class First

Before looking at `setup()` or `draw()`, read the class top to bottom. Ask yourself:
1. What are its instance variables? (What does one of these objects *know*?)
2. What does the constructor do? (What's true about a brand-new object?)
3. What are the methods? For each one — what does it do, and does it return anything?

### Strategy 2: Trace One Object

Pretend you're a single object. When someone calls `new Ball(5)`, what are your `x`, `y`, `xSpeed`? When someone calls `move()` on you, how do your values change? If you keep track of one object's state, you understand the class.

### Strategy 3: Separate "Dot Syntax" From "Inside the Class"

Inside a method, write `x`, `y` — it's understood that you mean *this object's* x and y. Outside the class (in `draw()`), write `ball.x`, `ball.y`. The dot means *that* ball's.

```processing
// Inside the class:
void move() { x += xSpeed; }

// Outside the class:
ball.move();           // call ball's move method
println(ball.x);       // read ball's x
```

### Strategy 4: Watch for Common Mistakes

- **Forgetting `new`** — `Ball b = Ball(5);` is wrong; you need `Ball b = new Ball(5);`.
- **Using the class name instead of the object name** — `Ball.move()` does not work. Use the object: `b.move()`.
- **Wrong return type** — If your method answers yes/no, the return type is `boolean`, and it must actually `return` something.
- **Forgetting the backward loop** — Removing while looping forward skips elements.
- **Forgetting the type in an ArrayList** — `ArrayList balls` compiles but causes headaches. Use `ArrayList<Ball> balls`.

---

## Practice Thought Exercises

Try these without running code — just think through them.

**1.** What's the difference between a class and an object? Give a real-world analogy.

**2.** This class:

```processing
class Cat {
  String name;
  int age;
  Cat(String n) {
    name = n;
    age = 0;
  }
}
```

Write the line of code that creates a Cat named "Whiskers" and stores it in a variable called `c`. Then write the line that prints Whiskers's age.

**3.** A class has this method:

```processing
boolean isAwake() {
  return energy > 30;
}
```

If you have an object `c` with `energy = 25`, what does `c.isAwake()` return? What if `energy` is 50?

**4.** A sketch has `ArrayList<Fish> fish = new ArrayList<Fish>();`. Write a for loop that adds 8 new fish to the list.

**5.** Given the class below, what does this code print?

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
b.tick();
println(a.n + " " + b.n);
```

**6.** A student writes this loop to remove every dead enemy. Why is it wrong, and how do you fix it?

```processing
for (int i = 0; i < enemies.size(); i++) {
  if (enemies.get(i).isDead()) {
    enemies.remove(i);
  }
}
```

**7.** What's the difference between these two method signatures? When would you use each?
- `void show()`
- `boolean isHit()`

**8.** A class has `float x, y;` and a `move()` method that does `x += 2;`. You create two objects:

```processing
Thing a = new Thing();
Thing b = new Thing();
a.move();
a.move();
```

What is `a.x`? What is `b.x`?

---

### Answers

**1.** A class is a *blueprint*; an object is a *thing built from the blueprint*. Analogy: "Cookie cutter" (class) vs. "cookie" (object). You can make many cookies from one cutter.

**2.**
```processing
Cat c = new Cat("Whiskers");
println(c.age);   // prints 0
```

**3.** `c.isAwake()` with `energy = 25` → `false` (25 is not > 30). With `energy = 50` → `true`.

**4.**
```processing
for (int i = 0; i < 8; i++) {
  fish.add(new Fish());
}
```

**5.** Prints `2 1`. Objects `a` and `b` are separate; each has its own `n`. `a.tick()` runs twice so `a.n = 2`. `b.tick()` runs once so `b.n = 1`.

**6.** Forward loop + removal = skipped elements. When you remove index `i`, everything shifts down, so the element that was at `i+1` is now at `i` — but the loop moves on to `i+1` and skips it. Fix: loop backward.
```processing
for (int i = enemies.size() - 1; i >= 0; i--) {
  if (enemies.get(i).isDead()) enemies.remove(i);
}
```

**7.** `void show()` *does* something (draws) and returns nothing. `boolean isHit()` *answers* something — returns `true` or `false`. Use `void` when the method's job is to change state or draw; use a return type when the caller needs the answer (typically inside an `if`).

**8.** `a.x = 4` (moved twice, each move adds 2 → starts at 0, then 2, then 4). `b.x = 0` (never moved). Each object's `x` is independent.

---

## Syntax Quick Reference

### Defining a Class

```processing
class Ball {
  // --- instance variables ---
  float x, y;
  float xSpeed, ySpeed;
  color c;

  // --- constructor ---
  Ball(float sx, float sy, float speed) {
    x = sx;
    y = sy;
    xSpeed = speed;
    ySpeed = speed;
    c = color(random(255), random(255), random(255));
  }

  // --- void method (does something) ---
  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
  }

  // --- void method (draws something) ---
  void show() {
    fill(c);
    noStroke();
    circle(x, y, 20);
  }

  // --- boolean method (answers a question) ---
  boolean isHittingEdge() {
    return x < 0 || x > width || y < 0 || y > height;
  }
}
```

### Creating and Using Objects

```processing
Ball b;                                  // declare
b = new Ball(100, 200, 3);               // construct
b.move();                                // call a method
if (b.isHittingEdge()) { ... }           // use a return value
println(b.x);                            // read an instance variable
```

### An ArrayList of Objects

```processing
ArrayList<Ball> balls = new ArrayList<Ball>();

// Add objects
balls.add(new Ball(100, 200, 3));

// Read one
Ball first = balls.get(0);

// Loop through all
for (int i = 0; i < balls.size(); i++) {
  balls.get(i).move();
  balls.get(i).show();
}

// Backward loop for safe removal
for (int i = balls.size() - 1; i >= 0; i--) {
  if (balls.get(i).isOffScreen()) {
    balls.remove(i);
  }
}
```

---

## Key Vocabulary

| Term | Definition |
|---|---|
| **Class** | A blueprint that defines what objects of that kind have and can do |
| **Object** | A specific instance built from a class (via `new`) |
| **Instance** | Another word for "object" — one specific thing made from the class |
| **Instance variable** | Data belonging to one object (e.g., that ball's `x`) |
| **Instance method** | A function belonging to one object (e.g., `b.move()`) |
| **Constructor** | Special method with the class's name; runs once when you `new` an object |
| **`new`** | Keyword that builds a new object using a constructor |
| **Parameterized constructor** | A constructor that takes arguments so each object starts differently |
| **Return type** | What a method gives back (`void`, `boolean`, `float`, etc.) |
| **`void`** | Return type meaning "this method returns nothing" |
| **Dot notation** | `object.variable` or `object.method()` — accesses something that belongs to one object |
| **Object-Oriented Programming (OOP)** | The general style of writing programs by designing classes and creating objects |
