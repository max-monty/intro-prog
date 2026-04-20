void setup() {
  size(800, 800);
}

int y=725;
int w=175;
int t=227;
int q=228;

void draw() {
  int x=mouseX;
  noStroke();
  background(10);
  fill(#E3BB93);
  // Head
  circle(170, 170, 240);
  //Grass
  fill(0, 200, 0);
  rect(0, 750, 1000, 50);
  stroke(0,200,0);
  for(int b=5; b<650; b+=3) {
    line(b, 750, b + 2,730);
  }
  noStroke();
  //HOlE
  fill(#834404);
  square(650, 750, 100);
  fill(#FFEB03);
  rect(715, 350, 5, 430);
  triangle(715, 350, 640, 400, 715, 450);
  fill(255);
  //golfball
  circle(x, y, 50);
  fill(200);
  for (int d=0; d<15; d++) {
    circle(x+random(-19, 19), y+random(-19, 19), 4);
  }

  // Nose
  fill(10);
  beginShape();
  vertex(150, 200);
  vertex(175, w);
  vertex(200, 200);
  endShape();
  //Mouth
  fill(0);
  beginShape();
  vertex(100, 225);
  vertex(125, q);
  vertex(175, t);
  vertex(225, q);
  vertex(250, 225);
  endShape();
  // Eyes
  circle(140, 130, 30);
  circle(210, 130, 30);
  //Eyes Blink
  fill(255);
  textSize(40);
  //Directions Text
  text("Click Mouse", 500,50);
  text("Drag Ball Into Hole",450,100);
if (mousePressed) {
    fill(#E3BB93);
    circle(140, 130, 30);
    circle(210, 130, 30);
}
  //Ball Moving
  if (x>650&&x<750) {
    x=700;
    y=750;
    t=270;
    q=250;
    fill(255);
    textSize(90);
    text("Hole Out!", 275,400);
  } else {
    y=725;
    w=175;
    t=227;
    q=228;
  }
}
