void setup() {
  size(400, 400);
  background(255);
}

void draw() {}

void mousePressed() {
  fill(random(255), random(255), random(255));
  circle(mouseX, mouseY, random(10,50));
  
}
