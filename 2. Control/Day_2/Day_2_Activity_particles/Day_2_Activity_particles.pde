// ============================================
// DAY 2 ACTIVITY: Particle Universe
// ============================================
// Create generative art with randomness!
// See the README for level descriptions.
// ============================================

void setup() {
  size(600, 500);
  background(10, 10, 30);
}

void draw() {
  // Level 1: Don't clear background so particles accumulate

  // ============================================
  // LEVEL 1: Stardust
  // ============================================
  // Spawn particles in mousePressed(), not here
  // ============================================


  // ============================================
  // LEVEL 2: Color Explosion
  // ============================================
  // TODO: Add warm/cool color modes
  // TODO: Use a boolean to track which mode
  //
  // Hints:
  // - Warm: high red, low blue
  // - Cool: high blue, low red
  // - random(200, 255) for high values
  // ============================================


  // ============================================
  // LEVEL 3: Organic Flow
  // ============================================
  // TODO: Make particles move using velocity
  // TODO: Make particles fade over time
  //
  // Hints:
  // - Store particle data in arrays
  // - Update positions each frame
  // - Use semi-transparent background for trails
  // ============================================


  // ============================================
  // LEVEL 4: Living Canvas
  // ============================================
  // TODO: Particles attracted/repelled by mouse
  // TODO: Add gravity toggle
  // TODO: Connect nearby particles with lines
  // ============================================

}

void mousePressed() {
  // ============================================
  // LEVEL 1: Spawn particles here
  // ============================================
  // TODO: Use a for loop to create multiple particles
  // TODO: Each particle at random position near mouse
  // TODO: Random size with random(5, 20)
  // TODO: Random color with random(256)
  //
  // Hints:
  // - for (int i = 0; i < 10; i++) { ... }
  // - float x = mouseX + random(-30, 30);
  // - circle(x, y, size);
  // ============================================


}

void keyPressed() {
  // Clear canvas with 'C'
  if (key == 'c' || key == 'C') {
    background(10, 10, 30);
  }

  // TODO Level 2: Add 'W' for warm, switch key for cool
  // TODO Level 3: Add SPACE for particle burst
  // TODO Level 4: Add 'G' for gravity toggle
}
