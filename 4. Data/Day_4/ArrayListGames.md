# ArrayList Game Projects

Choose one of the following games to build in Processing. Each game should use parallel ArrayLists to manage multiple objects on screen. Your game should include a score display and some kind of end condition.

---

## Option 1: Falling Catcher

Objects fall from the top of the screen at random x positions. The player moves a paddle left and right using the keyboard to catch them. You'll need ArrayLists to track each falling object's x position, y position, and speed. Increase the score when the player catches an object and lose a life when one hits the ground. End the game when all lives are gone.

## Option 2: Whack-a-Mole

Circles pop up at random positions on screen and only stay visible for a short time before disappearing. The player clicks on them to score points. You'll need ArrayLists to track each mole's x position, y position, and how many frames it has been on screen. Remove a mole when the player clicks it or when its time runs out. Play for a set amount of time and display the final score.

## Option 3: Asteroid Dodge

The player controls a ship at the bottom of the screen using the keyboard while asteroids fall from the top. You'll need ArrayLists to track each asteroid's x position, y position, size, and speed. Asteroids should spawn at random intervals and positions. The game ends when an asteroid collides with the player. Display how long the player survived or how many asteroids they dodged.

## Option 4: Balloon Pop

Balloons rise from the bottom of the screen. The player clicks on them to pop them before they float off the top. You'll need ArrayLists to track each balloon's x position, y position, size, color, and speed. Earn points for each balloon popped and lose a life for each one that escapes. End the game when all lives are gone.

## Option 5: Shooter

The player controls a ship at the bottom of the screen and fires bullets upward at targets moving horizontally across the screen. You'll need two separate sets of parallel ArrayLists — one for bullets and one for targets. Each bullet needs an x and y position. Each target needs an x position, y position, speed, and size. Remove a bullet and a target when they collide. Display the score and end the game when a target reaches the bottom of the screen.