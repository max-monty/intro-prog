// Activity 3: Midpoint Visualizer
// Learn: Non-void functions that RETURN a value
// The midpoint() function returns the middle between two numbers

// Two draggable points
float point1X, point1Y;
float point2X, point2Y;

void setup() {
  size(500, 400);
  
  // Set initial positions for our two points
  point1X = 100;
  point1Y = 200;
  point2X = 400;
  point2Y = 200;
}

void draw() {
  background(240, 240, 220);
  
  // Point 1 follows the mouse
  point1X = mouseX;
  point1Y = mouseY;
  
  // Calculate midpoints using our function
  // The function RETURNS a value that we store in variables
  float midX = midpoint(point1X, point2X);
  float midY = midpoint(point1Y, point2Y);
  
  // Draw the line connecting the two points
  stroke(150);
  strokeWeight(2);
  line(point1X, point1Y, point2X, point2Y);
  
  // Draw Point 1 (follows mouse)
  fill(255, 100, 100);
  noStroke();
  ellipse(point1X, point1Y, 40, 40);
  
  // Draw Point 2 (stationary)
  fill(100, 100, 255);
  ellipse(point2X, point2Y, 40, 40);
  
  // Draw the midpoint using our RETURNED values
  fill(100, 255, 100);
  stroke(0);
  strokeWeight(3);
  ellipse(midX, midY, 50, 50);
  
  // Labels
  fill(0);
  textSize(14);
  text("Point 1", point1X - 20, point1Y - 25);
  text("Point 2", point2X - 20, point2Y - 25);
  text("MIDPOINT", midX - 35, midY - 30);
  
  // Display the returned values
  fill(50);
  textSize(14);
  text("midpoint(" + int(point1X) + ", " + int(point2X) + ") returned: " + int(midX), 20, 30);
  text("midpoint(" + int(point1Y) + ", " + int(point2Y) + ") returned: " + int(midY), 20, 50);
}

// NON-VOID FUNCTION: Returns a float value
// This calculates the midpoint (average) of two numbers
float midpoint(float a, float b) {
  float middle = (a + b) / 2;
  return middle;  // Send the answer back!
}
