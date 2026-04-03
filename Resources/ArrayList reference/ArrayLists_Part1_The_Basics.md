# ArrayLists in Processing

## Part 1: The Basics

*Intro to Programming*

---

## 1. The Problem with Regular Arrays

You already know how to use arrays in Processing. You can create an array to hold a bunch of values, loop through them, and draw things based on what's inside. Arrays are great—but they have one big limitation.

**Arrays have a fixed size.** When you write `int[] nums = new int[5]`, you're stuck with exactly 5 slots. You can't add a 6th value later, and you can't shrink it down to 3 if you don't need all the space. If your program needs to grow or shrink a collection of data while it runs, a regular array makes that really awkward.

Think about it: what if you're building a sketch where the user clicks to add new circles? You don't know ahead of time how many circles there will be. Or what if circles can disappear when they go off-screen? With a regular array, you'd have to create a new, bigger (or smaller) array every time, copy everything over, and keep track of how many slots are actually in use. That's a lot of bookkeeping.

This is exactly the problem that **ArrayLists** solve.

---

## 2. What Is an ArrayList?

An ArrayList is like an array that can grow and shrink automatically. You don't have to decide its size when you create it. You can add items to the end, remove items from anywhere, and the ArrayList handles all the behind-the-scenes work of resizing itself.

Here's the key difference at a glance:

| Regular Array | ArrayList |
|---|---|
| Fixed size (set when you create it) | Grows and shrinks automatically |
| Access with brackets: `nums[i]` | Access with `.get(i)` |
| Change with brackets: `nums[i] = 5` | Change with `.set(i, 5)` |
| Use `.length` for the size | Use `.size()` for the size |
| Can hold `int`, `float`, etc. directly | Uses `Integer` and `Float` (wrapper types) |

---

## 3. Creating an ArrayList

To create an ArrayList, you use this syntax. Note the angle brackets `< >` around the type—this tells Processing what kind of data the ArrayList will hold.

```java
// An ArrayList of integers
ArrayList<Integer> scores = new ArrayList<Integer>();

// An ArrayList of floats
ArrayList<Float> temperatures = new ArrayList<Float>();
```

> **⚠️ Important: Wrapper Types**
>
> Notice that we write `Integer` instead of `int`, and `Float` instead of `float`. ArrayLists can't hold primitive types like `int` and `float` directly. Instead, they use "wrapper" versions: `Integer` and `Float`. These are capitalized and they work the same way—Processing converts between them automatically. You just need to remember to capitalize them inside the angle brackets.

When you first create an ArrayList, it's empty—it has a `.size()` of 0. You then add items to it one at a time.

---

## 4. Adding and Accessing Items

### Adding Items

Use `.add()` to put a new value at the end of the list:

```java
ArrayList<Integer> scores = new ArrayList<Integer>();
scores.add(95);
scores.add(87);
scores.add(92);
// scores is now [95, 87, 92]

println(scores.size());  // prints 3
```

You can also insert a value at a specific index using `.add(index, value)`. This pushes everything at that index and after it one spot to the right:

```java
scores.add(1, 100);
// scores is now [95, 100, 87, 92]
// The 100 was inserted at index 1,
// shifting 87 and 92 to the right.
```

### Getting Items

Instead of square brackets, you use `.get(index)` to retrieve a value:

```java
int first = scores.get(0);     // 95
int second = scores.get(1);    // 100
println(scores.get(2));        // prints 87
```

### Changing Items

To replace a value at a specific index, use `.set(index, newValue)`:

```java
scores.set(0, 99);
// scores is now [99, 100, 87, 92]
// The value at index 0 changed from 95 to 99.
```

> **💡 Tip: Indexing Is the Same**
>
> Just like regular arrays, ArrayLists use zero-based indexing. The first item is at index 0, the second at index 1, and so on. If you try to access an index that doesn't exist (like index 5 in a 3-item list), you'll get an `IndexOutOfBoundsException` error.

---

## 5. Removing Items

This is where ArrayLists really shine compared to regular arrays. Removing an item is one line of code, and the ArrayList automatically shifts everything over to close the gap.

```java
// Start: [99, 100, 87, 92]
scores.remove(1);
// Now:   [99, 87, 92]
// The value 100 at index 1 was removed,
// and 87, 92 shifted left to fill the gap.
```

## Check Your Understanding

Try answering these questions before our next class:

1. What's the main advantage of an ArrayList over a regular array?

2. Why do we write `ArrayList<Integer>` instead of `ArrayList<int>`?

3. What does the following code print?

```java
ArrayList<Integer> vals = new ArrayList<Integer>();
vals.add(5);
vals.add(10);
vals.add(15);
vals.remove(1);
println(vals.get(1));
```

4. After calling `vals.remove(1)` in the code above, what is the size of the ArrayList?

---

*Continued in Part 2: Looping & Full Examples →*
