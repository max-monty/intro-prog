# Unit 5: Classes & Objects — Quiz Answer Key

**42 points | 60 minutes**

---

## Part 1: Multiple Choice (20 points — 2 points each)

**1. c)** A class is a blueprint; an object is a specific thing built from the class. (Cookie cutter vs. cookie.)

**2. b)** `Bird b = new Bird(50, 100);` — need type, variable name, `new`, and constructor args.

**3. b)** `20 15`. Each Box has its own `n`. `a` grows twice (10 → 15 → 20); `b` grows once (10 → 15).

**4. c)** `float`. The return type is the first word of the method signature.

**5. b)** `false`. `mood > 50` is strict — 50 is not greater than 50.

**6. b)** Two circles, at (150, 250) and (350, 250). Each object has its own `x` and `y`.

**7. c)** You can't call an instance method on the class itself — it has to be called on an object. Create a `Cat` first: `Cat c = new Cat(); c.meow();`.

**8. b)** Only the enemy at index 1 is removed. The one at index 2 slides into index 1 and is skipped because the loop advances to `i = 2`. Loop backward when removing.

**9. b)** `ArrayList<Ball> balls = new ArrayList<Ball>();`. The `<Ball>` tells Processing the list holds `Ball` objects.

**10. b)** 20 circles at 20 different random positions. The constructor runs once per object, giving each its own random `x` and `y`.

---

## Part 2: Free Response (22 points)

### 11. Read the Class (6 points)

**(a)** (2 pts) `x`, `y`, `speed`.

**(b)** (2 pts) `fly()` moves the bullet upward by subtracting `speed` from `y`. Return type: `void`.

**(c)** (2 pts) `b.y = 384`. Starts at 400; 400 − 8 − 8 = 384.

---

### 12. Debug and Explain (6 points)

**(a)** (4 pts — 2 each)
- `setup()`: `bal = Balloon(100, 200);` is missing `new`. Correct form: `bal = new Balloon(100, 200);`.
- `draw()`: `Balloon.show();` uses the class name, but instance methods must be called on an object: `bal.show();`.

**(b)** (2 pts — 1 each)
```processing
bal = new Balloon(100, 200);
bal.show();
```

---

### 13. Write a Class From Scratch (10 points)

```processing
class Star {
  float x, y;
  float size;

  Star(float sx, float sy, float sz) {
    x = sx;
    y = sy;
    size = sz;
  }

  void twinkle() {
    size = size * random(0.9, 1.1);
  }

  void show() {
    fill(255, 255, 200);
    circle(x, y, size);
  }

  boolean isTooBig() {
    return size > 50;
  }
}
```

Rubric (10 pts):
- 2 pts: class declaration and all three instance variables.
- 2 pts: constructor takes three parameters and assigns them.
- 2 pts: `twinkle()` is `void` and multiplies `size` by `random(0.9, 1.1)`.
- 2 pts: `show()` is `void` and draws `fill(255, 255, 200)` + `circle(x, y, size)`.
- 2 pts: `isTooBig()` returns `boolean` and compares `size > 50`.

Partial credit: deduct 1 pt per minor error (missing return type, wrong arg name, etc.).
