# Processing Fundamentals Practice Quiz

**Name:** \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

## Multiple Choice (20 points)

**1. Which function is the best place to call size() and initialize variables?**

a) draw()  
b) setup()  
c) mousePressed()  
d) keyPressed()

**2. If you increase a shape's y-coordinate in Processing, which direction does it move?**

a) Up  
b) Down  
c) Left  
d) Right

**3. What does the following code draw?**

```java
noFill();
stroke(0, 0, 255);
rect(50, 50, 100, 100);
```

a) A blue filled rectangle with no outline  
b) A rectangle with only a blue outline (no fill)  
c) A black rectangle with a blue outline  
d) Nothing appears on screen

**4. Which variable declaration can store the value 3.14?**

a) `int x = 3.14;`  
b) `float x = 3.14;`  
c) `int x = 3;`  
d) Both a and b

**5. What is the difference between a void function and a non-void function?**

a) void functions are faster  
b) void functions do not return a value; non-void functions return a value  
c) void functions cannot have parameters  
d) There is no difference

**6. Why do we typically call background() at the start of draw()?**

a) To make the program run faster  
b) To clear the previous frame and prevent "trails" from shapes  
c) To initialize variables  
d) It is required for the program to compile

**7. What does `ellipse(200, 150, 100, 50)` draw?**

a) An ellipse with its top-left corner at (200, 150)  
b) An ellipse centered at (200, 150) with width 100 and height 50  
c) An ellipse centered at (100, 50) with width 200 and height 150  
d) A circle with diameter 100 at position (200, 150)

**8. What color does `fill(255)` produce?**

a) Black  
b) White  
c) Gray  
d) Red

**9. After calling `size(600, 400)`, what value does the built-in variable `height` contain?**

a) 600  
b) 400  
c) 1000  
d) 0

**10. What is the difference between mouseDragged() and mousePressed()?**

a) mouseDragged() runs once per click; mousePressed() runs continuously  
b) mousePressed() runs once per click; mouseDragged() runs while moving with button held  
c) They are exactly the same  
d) mouseDragged() only works with the right mouse button

---

## Free Response & Code Writing (30 points)

**11. (4 points)** Look at the code below. What are the values of each variable after setup() runs?

```java
float posX;
float posY;
int lives;

void setup() {
    size(500, 300);
    posX = width / 2;
    posY = height / 2;
    lives = 3;
    lives = lives * 2;
}
```

- posX = \_\_\_\_\_\_\_\_\_\_
- posY = \_\_\_\_\_\_\_\_\_\_
- lives = \_\_\_\_\_\_\_\_\_\_
- height = \_\_\_\_\_\_\_\_\_\_

**12. (3 points)** Draw where each shape would appear on the canvas below. Label each shape with its number.

```java
size(200, 200);

// Shape 1
circle(50, 50, 40);

// Shape 2
rect(100, 50, 80, 40);

// Shape 3
triangle(100, 150, 50, 190, 150, 190);
```

[Draw on the 200x200 grid below - origin (0,0) is top-left]






**13. (8 points)** Create a void function called `drawTree` that takes x and y parameters and draws a simple tree (a rectangle for the trunk and a triangle for the leaves). Use fill() to add colors (brown trunk, green leaves). Then call that function three times using different parameters.

```java
void draw() {
    // Your function calls here:



}

// Your function definition here:







```

**14. (5 points)** Write a non-void function called `calculateArea` that takes two float parameters (width and height) and returns the area of a rectangle (width multiplied by height) as a float.

```java
// Your code here:





```

**15. (10 points)** Complete this interactive sketch. When the user clicks, the square should jump to the mouse position. When the user presses any key, the square size should reset to 50. When the user drags, the square should follow the mouse.

```java
float squareX;
float squareY;
float squareSize;

void setup() {
    size(400, 400);
    squareX = width / 2;
    squareY = height / 2;
    squareSize = 50;
}

void draw() {
    background(200);
    fill(255, 100, 50);
    rect(squareX, squareY, squareSize, squareSize);
}

// YOUR CODE HERE: Write mousePressed() to move square to click location



// YOUR CODE HERE: Write keyPressed() to reset squareSize to 50



// YOUR CODE HERE: Write mouseDragged() to make square follow mouse



```

**16. (10 points)** Write code that draws a circle that moves DOWN the screen. When it goes off the bottom edge, the circle should wrap around and reappear at the top. To move the ball, write a non-void function called `moveDown` that takes two float parameters: y (current position) and speed (how fast to move). The function should return the new y position.

Then show how you would call this function in draw() to move a ball down the screen.

```java
// Use moveDown to move a ball down the screen:

void setup() {



}

void draw() {






}

// Write the moveDown function:






```
