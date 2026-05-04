# Processing Reference — Crossing Game

---

### `size()`
Defines the dimension of the display window in pixels.

**Syntax:** `size(width, height)`

**Parameters:**
- `width` — int: width of the display window
- `height` — int: height of the display window

---

### `background()`
Sets the color used for the background of the window.

**Syntax:** `background(gray)` / `background(v1, v2, v3)`

**Parameters:**
- `gray` — int: a grayscale value (0–255)
- `v1` — int: red value (0–255)
- `v2` — int: green value (0–255)
- `v3` — int: blue value (0–255)

---

### `fill()`
Sets the color used to fill shapes.

**Syntax:** `fill(gray)` / `fill(v1, v2, v3)`

**Parameters:**
- `gray` — int: a grayscale value (0–255)
- `v1` — int: red value (0–255)
- `v2` — int: green value (0–255)
- `v3` — int: blue value (0–255)

---

### `rect()`
Draws a rectangle to the screen.

**Syntax:** `rect(x, y, w, h)`

**Parameters:**
- `x` — float: x-coordinate of the rectangle
- `y` — float: y-coordinate of the rectangle
- `w` — float: width of the rectangle
- `h` — float: height of the rectangle


---

### `width`
System variable that stores the width of the display window.

**Type:** int

---

### `height`
System variable that stores the height of the display window.

**Type:** int

---

### `keyPressed()`
Function called once every time a key is pressed.

**Syntax:** `void keyPressed() { ... }`

**Parameters:** none

---

### `keyCode`
System variable that stores the code of the most recently pressed key. Used to detect special keys like arrows.

**Type:** int

**Common values:** `UP`, `DOWN`, `LEFT`, `RIGHT`

---

### `mousePressed()`
Function called once every time a mouse button is pressed.

**Syntax:** `void mousePressed() { ... }`

**Parameters:** none

---

## Examples

### Class with instance variables and constructor
```java
class Ball {
  float x, y;
  
  Ball(float startX, float startY) {
    x = startX;
    y = startY;
  }
  
  void display() {
    fill(255, 0, 0);
    circle(x, y, 20);
  }
}
```

### Using `keyPressed()` and `keyCode` to move an item
```java
void keyPressed() {
  if (keyCode == UP){
    player.y -= 40;
  }
  if (keyCode == DOWN){
    player.y += 40;
  }
  if (keyCode == LEFT){
    player.x -= 40;
  }
  if (keyCode == RIGHT){
    player.x += 40;
  }
}
```
