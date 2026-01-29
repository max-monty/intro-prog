# Unit 2: Control - Practice Quiz

## Multiple Choice (20 points - 2 points each)

**1.** What is the output of the following code?
```processing
String fruit = "apple";
String color = "red";
println(color + " " + fruit);
```
- A) `color fruit`
- B) `red apple`
- C) `"red" "apple"`
- D) `redapple`

---

**2.** Which line correctly declares a String variable?
- A) `string name = "Bob";`
- B) `String name = Bob;`
- C) `String name = "Bob";`
- D) `String "name" = Bob;`

---

**3.** What range of values can `random(10, 20)` return?
- A) 10 to 20, including both
- B) 10 to 19
- C) 10 to 19.999... (not including 20)
- D) 11 to 20

---

**4.** What does `int(random(1, 5))` return?
- A) Only 1, 2, 3, or 4
- B) Only 1, 2, 3, 4, or 5
- C) A decimal between 1 and 5
- D) Only 5

---

**5.** Which operator checks if two values are equal?
- A) `=`
- B) `==`
- C) `!=`
- D) `===`

---

**6.** What is the value of `result` after this code runs?
```processing
boolean result = !(true);
```
- A) `true`
- B) `false`
- C) `1`
- D) Error

---

**7.** What does the following code print?
```processing
int x = 15;
if (x > 10) {
  println("A");
} else if (x > 5) {
  println("B");
} else {
  println("C");
}
```
- A) `A`
- B) `B`
- C) `A` and `B`
- D) `C`

---

**8.** When is the code inside `if (a && b)` executed?
- A) When `a` is true OR `b` is true
- B) When `a` is true AND `b` is true
- C) When `a` is false AND `b` is false
- D) Always

---

**9.** What is wrong with this code?
```processing
if (score >= 80);
  println("Good job!");
```
- A) Missing curly braces
- B) Semicolon after the condition
- C) Wrong comparison operator
- D) Nothing is wrong

---

**10.** What does `x = !x;` do when `x` is a boolean?
- A) Sets x to true
- B) Sets x to false
- C) Toggles x (flips its value)
- D) Causes an error

---

## Free Response (30 points)

### Question 1 (4 points)
Trace the following code and write the value of each variable after the code runs.

```processing
String a = "Hello";
String b = "World";
int num = 42;
String c = a + " " + b + "! Number: " + num;
```

**a =** _______________

**b =** _______________

**num =** _______________

**c =** _______________

---

### Question 2 (4 points)
What are all the possible values that could be stored in `result`? List each possible value.

```processing
int result = int(random(3, 7));
```

**Possible values:** _______________

---

### Question 3 (6 points)
Write an if-else if-else statement that:
- Prints "Child" if age is less than 13
- Prints "Teen" if age is 13 to 19
- Prints "Adult" if age is 20 or older

```processing
int age = 16;

// Write your code here:




```

---

### Question 4 (6 points)
Trace through this code and write what gets printed.

```processing
int temp = 72;
boolean isSunny = true;

if (temp > 80) {
  if (isSunny) {
    println("Hot and sunny");
  } else {
    println("Hot but cloudy");
  }
} else if (temp > 60) {
  if (isSunny) {
    println("Nice day");
  } else {
    println("Cool and cloudy");
  }
} else {
  println("Cold");
}
```

**Output:** _______________

---

### Question 5 (5 points)
Write code that sets the background color based on where the mouse is:
- If mouseX is less than 200 AND mouseY is less than 200: red background
- Otherwise: blue background

```processing
void draw() {
  // Write your code here:




}
```

---

### Question 6 (5 points)
This code has a bug. The programmer wants to display grades A, B, C, D, or F, but it always shows "A". Find and explain the bug.

```processing
int score = 75;
String grade;

if (score >= 60) {
  grade = "D";
} else if (score >= 70) {
  grade = "C";
} else if (score >= 80) {
  grade = "B";
} else if (score >= 90) {
  grade = "A";
} else {
  grade = "F";
}

println(grade);
```

**What is the bug?**

_______________________________________________

_______________________________________________

**How would you fix it?**

_______________________________________________

_______________________________________________

---

## Answer Key (for self-checking)

### Multiple Choice
1. B
2. C
3. C
4. A
5. B
6. B
7. A
8. B
9. B
10. C

### Free Response

**Q1:**
- a = "Hello"
- b = "World"
- num = 42
- c = "Hello World! Number: 42"

**Q2:** 3, 4, 5, or 6 (four possible values)

**Q3:**
```processing
if (age < 13) {
  println("Child");
} else if (age <= 19) {
  println("Teen");
} else {
  println("Adult");
}
```

**Q4:** "Nice day" (72 > 60 is true, and isSunny is true)

**Q5:**
```processing
void draw() {
  if (mouseX < 200 && mouseY < 200) {
    background(255, 0, 0);  // red
  } else {
    background(0, 0, 255);  // blue
  }
}
```

**Q6:**
- Bug: The conditions are checked in the wrong order. Since 75 >= 60 is true, it assigns "D" and never checks the other conditions.
- Fix: Check from highest to lowest: 90 first, then 80, then 70, then 60.
