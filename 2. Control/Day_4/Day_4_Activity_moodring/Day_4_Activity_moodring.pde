// ============================================
// DAY 4 ACTIVITY: Mood Ring Visualizer
// ============================================
// Create an interactive mood ring using if-else if-else!
// See the README for level descriptions.
// ============================================

// ============================================
// LEVEL 1: Basic Mood Ring
// ============================================
// TODO: Create variables for mood and ring color


void setup() {
  size(600, 500);
}

void draw() {
  background(30, 30, 40);

  // ============================================
  // TODO: Use if-else if-else to set mood based on mouseX
  //
  // Divide screen into 4 zones:
  // - mouseX < width/4        -> "Calm" (blue)
  // - mouseX < width/2        -> "Content" (green)
  // - mouseX < width*3/4      -> "Energetic" (yellow)
  // - else                    -> "Passionate" (red)
  //
  // Set both the mood name AND the ring color
  // ============================================


  // ============================================
  // TODO: Draw the mood ring
  //
  // Hints:
  // - noFill() for a ring (not filled circle)
  // - strokeWeight(20) for thick ring
  // - stroke(r, g, b) for ring color
  // - circle(width/2, height/2, 200)
  // ============================================


  // ============================================
  // TODO: Display the mood name below the ring
  //
  // Hints:
  // - fill() for text color
  // - textAlign(CENTER)
  // - textSize(32)
  // - text(moodName, width/2, y)
  // ============================================


  // ============================================
  // LEVEL 2: Gradient Moods
  // ============================================
  // TODO: Add more moods (6+ zones)
  // TODO: Add a pulsing effect using mouseY
  // TODO: Change background color to match mood
  //
  // Hints:
  // - sin(frameCount * 0.05) creates a smooth pulse
  // ============================================


  // ============================================
  // LEVEL 3: Animated Mood Display
  // ============================================
  // TODO: Add unique visual effects for each mood
  // TODO: Use lerp() for smooth color transitions
  //
  // Hints:
  // - lerp(current, target, 0.05) smoothly transitions
  // - Each mood can have its own particle effect
  // ============================================


  // ============================================
  // LEVEL 4: Personal Mood Portrait
  // ============================================
  // TODO: Background patterns for each mood
  // TODO: Mood history trail
  // TODO: "Reading" mode with SPACE held for 3 seconds
  // ============================================

}
