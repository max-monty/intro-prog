# **Study Guide: Draw**

## **Key Concepts & Definitions**

### **Variables**

* **Declaration**: Creating a variable name and type  
* **Assignment**: Giving a variable a value using `=`  
* **Reassignment**: Changing a variable's value later in the code

### **Built-in Variables**

* `width` \- The width of the canvas (set by `size()` or `createCanvas()`)  
* `height` \- The height of the canvas  
* `mouseX` \- Current x position of the mouse  
* `mouseY` \- Current y position of the mouse

### **Void Functions**

* Functions that perform actions but don't return a value  
* Use the keyword `void` before the function name (in Processing/Java)  
* Can accept parameters to customize behavior

### **Non-Void Functions (Return Functions)**

* Functions that calculate and send back a value  
* Use a return type (`float`, `int`, `boolean`) instead of `void`  
* Must include a `return` statement  
* The returned value can be stored in a variable or used directly

### **Event Handlers**

* Special functions that automatically run when user input occurs  
* `mousePressed()` \- Runs once when mouse button is clicked  
* `keyPressed()` \- Runs once when any key is pressed  
* `mouseDragged()` \- Runs repeatedly while mouse is pressed and moving

---

## **Syntax Reference**

### **Variable Declaration and Assignment**

// Declare variables (usually at the top, outside functions)  
float circleX;  
float circleY;  
int score;

void setup() {  
    size(400, 200);  
      
    // Assign values using built-in variables  
    circleX \= width / 2;    // 400 / 2 \= 200  
    circleY \= height / 2;   // 200 / 2 \= 100  
      
    // Assignment and reassignment  
    score \= 10;  
    score \= score \- 3;      // score is now 7  
}

### **Coordinate System**

(0,0) ────────────────► x increases  
  │  
  │    Canvas  
  │  
  ▼  
  y increases

* Origin (0, 0\) is the **top-left** corner  
* x increases going **right**  
* y increases going **down**

### **Drawing Shapes**

// Circle: circle(centerX, centerY, diameter)  
circle(100, 50, 40);  // center at (100,50), diameter 40

// Rectangle: rect(topLeftX, topLeftY, width, height)  
rect(50, 100, 80, 40);  // top-left at (50,100), 80 wide, 40 tall

// Triangle: triangle(x1, y1, x2, y2, x3, y3)  
triangle(100, 150, 50, 190, 150, 190);  // three corner points

### **Void Functions with Parameters**

// DEFINITION \- Creating the function  
void drawCar(float x, float y) {  
    // Body  
    fill(255, 0, 0);  // Red  
    rect(x, y, 60, 30);  
      
    // Wheels  
    fill(0);  // Black  
    circle(x \+ 15, y \+ 30, 15);  
    circle(x \+ 45, y \+ 30, 15);  
}

// CALLING \- Using the function  
void draw() {  
    background(200);  
    drawCar(50, 100);  
    drawCar(150, 200);  
    drawCar(250, 150);  
}

### **Non-Void Functions (Return Values)**

// DEFINITION \- Function that returns a float  
float calculatePerimeter(float w, float h) {  
    float perimeter \= 2 \* w \+ 2 \* h;  
    return perimeter;  
}

// Alternative shorter version  
float calculatePerimeter(float w, float h) {  
    return 2 \* w \+ 2 \* h;  
}

// CALLING \- Store the returned value  
float result \= calculatePerimeter(10, 5);  // result \= 30

### **Event Handlers**

float circleX;  
float circleY;  
float circleDiameter;

void setup() {  
    size(400, 400);  
    circleX \= width / 2;  
    circleY \= height / 2;  
    circleDiameter \= 40;  
}

void draw() {  
    background(200);  
    circle(circleX, circleY, circleDiameter);  
}

// Runs ONCE when mouse is clicked  
void mousePressed() {  
    circleX \= mouseX;  
    circleY \= mouseY;  
}

// Runs ONCE when any key is pressed  
void keyPressed() {  
    circleDiameter \= circleDiameter \+ 10;  
}

// Runs REPEATEDLY while mouse is dragged  
void mouseDragged() {  
    circleX \= mouseX;  
    circleY \= mouseY;  
}

---

## **Common Patterns**

### **Movement Pattern**

float ballX;  
float ballY;  
float speed;

void setup() {  
    size(400, 400);  
    ballX \= 0;  
    ballY \= height / 2;  
    speed \= 3;  
}

void draw() {  
    background(200);  
    circle(ballX, ballY, 40);  
    ballX \= ballX \+ speed;  // Move right  
}

### **Edge Wrapping Pattern**

void draw() {  
    background(200);  
    circle(ballX, ballY, 40);  
      
    // Move the ball  
    ballX \= ballX \+ speed;  
      
    // Wrap around when off right edge  
    if (ballX \> width) {  
        ballX \= 0;  
    }  
}

// Or as a non-void function:  
float moveRight(float x, float speed) {  
    x \= x \+ speed;  
    if (x \> width) {  
        x \= 0;  
    }  
    return x;  
}

// Called in draw():  
ballX \= moveRight(ballX, speed);

### **Vertical Movement with Wrapping**

float moveDown(float y, float speed) {  
    y \= y \+ speed;  
    if (y \> height) {  
        y \= 0;  // Wrap to top  
    }  
    return y;  
}

---

## **Quick Reference: Common Mistakes to Avoid**

### **❌ Forgetting to use parameters**

// WRONG \- ignores the x, y parameters  
void drawTree(float x, float y) {  
    rect(100, 150, 20, 50);  // Always draws at same spot\!  
}

// CORRECT \- uses x, y to position the shape  
void drawTree(float x, float y) {  
    rect(x, y, 20, 50);  // Draws at the given position  
}

### **❌ Forgetting the return statement**

// WRONG \- no return statement  
float calculateArea(float w, float h) {  
    float area \= w \* h;  
    // Oops\! Forgot to return it\!  
}

// CORRECT  
float calculateArea(float w, float h) {  
    float area \= w \* h;  
    return area;  
}

### **❌ Wrong return type**

// WRONG \- says void but tries to return  
void calculateArea(float w, float h) {  
    return w \* h;  // Error\! void functions can't return values  
}

// CORRECT \- use float as return type  
float calculateArea(float w, float h) {  
    return w \* h;  
}

### **❌ Confusing mousePressed() with mouseDragged()**

// mousePressed() \- runs ONCE per click  
// mouseDragged() \- runs continuously while dragging

// If you want something to follow the mouse while dragging:  
void mouseDragged() {  
    objectX \= mouseX;  
    objectY \= mouseY;  
}

---

## **Practice Checklist**

Before the quiz, make sure you can:

* \[ \] Trace through code and determine variable values after `setup()` runs  
* \[ \] Calculate values using `width` and `height`  
* \[ \] Draw shapes at correct positions on a coordinate grid  
* \[ \] Understand that (0,0) is the top-left corner  
* \[ \] Write a void function with parameters  
* \[ \] Call a void function multiple times with different arguments  
* \[ \] Write a non-void function that returns a value  
* \[ \] Use `return` correctly in a function  
* \[ \] Write `mousePressed()` to respond to clicks  
* \[ \] Write `keyPressed()` to respond to key presses  
* \[ \] Write `mouseDragged()` to respond to dragging  
* \[ \] Use `mouseX` and `mouseY` to get mouse position  
* \[ \] Implement edge wrapping (object reappears on opposite side)

---

## **Key Vocabulary**

| Term | Definition |
| ----- | ----- |
| **Variable** | A named container that stores a value |
| **Parameter** | A variable in a function definition that receives a value |
| **Argument** | The actual value passed to a function when calling it |
| **Return** | Sending a value back from a function |
| **void** | Indicates a function doesn't return a value |
| **mouseX / mouseY** | Built-in variables storing current mouse position |
| **width / height** | Built-in variables storing canvas dimensions |

