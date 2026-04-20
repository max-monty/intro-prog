// Day 4 Activity Starter - Hoverable Bubbles
//
// An ArrayList of Bubble objects. Each bubble knows when the mouse is
// over it (via an isHovered() boolean method) and changes color.
// Click a bubble to pop it (remove from the list). A new bubble spawns
// to replace it.

ArrayList<Bubble> bubbles = new ArrayList<Bubble>();

void setup() {
  size(600, 400);
  for (int i = 0; i < 15; i++) {
    bubbles.add(new Bubble());
  }
}

void draw() {
  background(15, 25, 50);

  // TODO: loop through bubbles and call show() on each
}

void mousePressed() {
  // TODO: loop BACKWARD. If a bubble is hovered, remove it and add a new one.
}


// --- THE BUBBLE CLASS ---
class Bubble {
  // --- INSTANCE VARIABLES ---
  float x;
  float y;
  float size;

  // --- CONSTRUCTOR ---
  Bubble() {
    x = random(50, width - 50);
    y = random(50, height - 50);
    size = random(30, 70);
  }

  // --- RETURNS true if the mouse is over this bubble ---
  boolean isHovered() {
    // TODO: return true if dist(mouseX, mouseY, x, y) < size / 2
    return false;
  }

  // --- SHOW: draw the bubble. Color changes if hovered. ---
  void show() {
    // TODO:
    //   if (isHovered()) use a highlight color
    //   else use a default color
    //   circle(x, y, size)
  }
}
