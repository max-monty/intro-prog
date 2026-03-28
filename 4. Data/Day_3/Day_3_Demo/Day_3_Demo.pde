// Day 3 Demo - Finding the max in an array

float[] vals = new float[10];

void setup() {
  size(600, 300);
  for (int i = 0; i < vals.length; i++) {
    vals[i] = random(20, 200);
  }
}

void draw() {
  background(30);

  // Find the biggest value
  int maxIndex = 0;
  for (int i = 1; i < vals.length; i++) {
    if (vals[i] > vals[maxIndex]) {
      maxIndex = i;
    }
  }

  // Draw circles
  float spacing = width / (vals.length + 1);
  for (int i = 0; i < vals.length; i++) {
    float x = spacing * (i + 1);
    if (i == maxIndex) {
      fill(255, 80, 80);
    } else {
      fill(255);
    }
    noStroke();
    circle(x, height / 2, vals[i] / 3);
  }
}
