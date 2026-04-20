int sunX = 100;
boolean Daytime = true;
color MyColor = color(random(150), random(200), random(255));
color MyColor2 = color(random(150), random(200), random(255));
void setup() {
  size(800, 800);
  // background with multiple circles
  for (int Y = 90; Y < height; Y = Y +50) {
    for (int X = 0; X < width; X = X +40) {
      fill(random(255), random(255), random(255));
      circle(X, Y, 20);
    }
  }
  fill(0);
  textSize(20);
  text("Click to put stars in the sky", 10, 50);
  text("Watch the screen move from day to night when you press up!", 10, 70);
}

void face() {
  stroke(194, 162, 122);
  fill(194, 162, 122);
  circle(400, 400, 300);
  // eyes
  noStroke();
  fill(255);
  ellipse(350, 350, 80, 40);
  ellipse(450, 350, 80, 40);
  //pupils
  fill(0);
  circle(350, 350, 30);
  circle(450, 350, 30);
  // mouth
  fill(0);
  circle(400, 470, 110);
  fill(194, 162, 122);
  square(340, 370, 115);
  // nose
  strokeWeight(2);
  stroke(0, 0, 0);
  line(385, 420, 410, 420);
  line(410, 420, 405, 405);
  noStroke();
}


void body() {
  fill(255, 214, 237);
  ellipse(400, 800, 350, 700);
  fill(252, 202, 231);
  stroke(252, 202, 231);
  // heart
  triangle(315, 625, 315, 595, 330, 610);
  triangle(315, 625, 315, 595, 300, 610);
  circle(306, 602, 20);
  circle(323, 602, 20);
}

void hair() {
  fill(0);
  ellipse(400, 460, 330, 470);
}
// Random shapes in background
void mousePressed() {
  float click_shape =  random(0, 1);
  if (click_shape > 0.5) {
    fill(MyColor);
    square(mouseX, mouseY, 10);
  } else {
    fill(MyColor2);
    circle(mouseX, mouseY, 10);
  }
}
// changes the value of daytime
void keyPressed() {
  if (keyCode == UP) {
    Daytime = !Daytime;
  }
  // The Background for when it is "Day"
  if (Daytime) {
    background(184, 216, 255);
    fill(255);
    textSize(20);
    text("Click to put stars in the sky!", 10, 50);
    text("Watch the screen move from day to night when you press up!", 10, 70);
  }
  // The Background for when it is "night"
  else {
    background(0, 6, 122);
    fill(255);
    textSize(20);
    text("Click to put stars in the sky", 10, 50);
    text("Watch the screen move from day to night when you press up!", 10, 70);
  }

  // draw sun
  if (Daytime) {
    fill(255, 215, 54);
    circle(sunX, 150, 120);
  }

  // draw moon
  if (!Daytime) {
    fill(240);
    circle(650, 150, 120);
    fill(0, 6, 122);
    circle(670, 120, 120);
  }
}


void draw() {
  hair();
  body();
  face();
}
