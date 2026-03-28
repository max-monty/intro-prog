// Day 1 Demo - Arrays
// Draw circles from an array of sizes

float[] sizes = {20, 45, 30, 60, 15, 50, 35};

void setup() {
  size(600, 300);
}

void draw() {
  background(30);

  float spacing = width / (sizes.length + 1);

  for (int i = 0; i < sizes.length; i++) {
    float x = spacing * (i + 1);
    fill(255);
    noStroke();
    circle(x, height / 2, sizes[i]);
  }
}
