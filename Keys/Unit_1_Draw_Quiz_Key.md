# Processing Fundamentals Quiz - Answer Key

---

## Multiple Choice (20 points - 2 points each)

**1.** What is the purpose of the setup() function in Processing?
- **Answer: b) It runs once at the beginning of the program**

**2.** In Processing's coordinate system, where is the origin (0, 0) located?
- **Answer: c) Top-left corner**

**3.** Which line of code draws a red circle with no outline?
- **Answer: b) `fill(255, 0, 0); noStroke(); circle(100, 100, 50);`**

**4.** What is the difference between a float and an int variable?
- **Answer: b) float stores decimal numbers, int stores whole numbers**

**5.** What does the following function return?
- **Answer: b) A float value**

**6.** How often does the draw() function run?
- **Answer: c) Continuously in a loop (about 60 times per second by default)**

**7.** What does `rect(50, 100, 80, 40)` draw?
- **Answer: b) A rectangle with its top-left corner at (50, 100), width 80, height 40**

**8.** What color does `fill(0)` produce?
- **Answer: b) Black**

**9.** Which built-in variable stores the current horizontal position of the mouse?
- **Answer: b) mouseX**

**10.** When does the mousePressed() function run?
- **Answer: b) Once each time the mouse button is clicked**

---

## Free Response & Code Writing (30 points)

### 11. (4 points)

**score =** 15 (1 point)
- Explanation: score starts at 10, then score = score + 5 = 15

**speed =** 2.5 (1 point)

**canvasWidth =** 800 (1 point)
- Explanation: canvasWidth is assigned the value of width, which is 800

**width =** 800 (1 point)
- Explanation: size(800, 600) sets width to 800

---

### 12. (3 points)

```
    0   50  100  150  200
  0 +----+----+----+----+
    |####|    |    |    |    Shape 1: Square at top-left (0,0 to 50,50)
 50 +----+----+----+----+
    |    |    |    |    |
100 +----+----+----+----+
    |    |  (O)   |    |    Shape 2: Ellipse centered at (100,100), 60 wide, 40 tall
150 +----+----+----+----+
    |    |    |    | O  |    Shape 3: Circle centered at (175,175), diameter 50
200 +----+----+----+----+
```

- **Shape 1** (1 point): Rectangle in top-left corner, from (0,0) to (50,50)
- **Shape 2** (1 point): Ellipse centered at (100,100), horizontally wider than tall
- **Shape 3** (1 point): Circle centered at (175,175), radius 25 (diameter 50)

---

### 13. (8 points)

```processing
void draw() {
    // Function calls (2 points for calling correctly with different parameters)
    drawHouse(50, 200);
    drawHouse(200, 200);
    drawHouse(350, 200);
}

// Function definition (6 points)
void drawHouse(float x, float y) {
    // Body of house - rectangle (2 points)
    fill(150, 100, 50);  // brown color (1 point for using fill/stroke)
    stroke(0);
    rect(x, y, 100, 80);

    // Roof - triangle (2 points)
    fill(150, 0, 0);  // red color
    triangle(x, y, x + 50, y - 50, x + 100, y);
}
```

**Grading:**
- 2 points: Correct function signature (void, name, x and y parameters)
- 2 points: Rectangle for house body
- 2 points: Triangle for roof
- 1 point: Uses fill() and/or stroke() for colors
- 1 point: Three function calls with different parameters

---

### 14. (5 points)

```processing
float multiplyByTen(float x, float y) {
    return (x + y) * 10;
}
```

**Grading:**
- 1 point: Return type is float
- 1 point: Function name is multiplyByTen
- 1 point: Two float parameters (x and y)
- 2 points: Correct return statement (x + y) * 10

---

### 15. (10 points)

```processing
void mousePressed() {
    ballX = mouseX;
    ballY = mouseY;
}

void keyPressed() {
    ballX = width / 2;
    ballY = height / 2;
}

void mouseDragged() {
    ballX = mouseX;
    ballY = mouseY;
}
```

**Grading:**
- 3 points: mousePressed() sets ballX and ballY to mouseX and mouseY
- 4 points: keyPressed() resets ballX to width/2 and ballY to height/2
- 3 points: mouseDragged() sets ballX and ballY to mouseX and mouseY

---

### 16. (10 points)

```processing
float ballX;
float speed = 3;

void setup() {
    size(400, 400);
    ballX = 0;
}

void draw() {
    background(220);

    // Draw the ball
    circle(ballX, height/2, 50);

    // Update position using the function
    ballX = updatePosition(ballX, speed);
}

float updatePosition(float x, float speed) {
    x = x + speed;

    // Wrap around when hitting right edge
    if (x > width) {
        x = 0;
    }

    return x;
}
```

**Grading:**
- 2 points: Declares ballX and speed variables in setup or globally
- 2 points: Draws circle using ballX
- 2 points: Function signature correct (float return, two float parameters)
- 2 points: Adds speed to x position
- 2 points: Wrap-around logic (if x > width, reset to 0)
