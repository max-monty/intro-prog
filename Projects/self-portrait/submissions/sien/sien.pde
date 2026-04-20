float headXorig = 800;
float headYorig = 400;

float headX;
float headY;

float bodyX;
float bodyY;

float prevMouseX;
float prevMouseY;

float hAnchorX;
float hAnchorY;

float dX;
float dY;
float spd = 3;

boolean draggingHead = false;
boolean draggingBody = false;

void setup() {
  size(1600, 800);

  headX = headXorig;
  headY = headYorig;

  bodyX = headXorig;
  bodyY = headYorig + 200;
}

void mousePressed() {

  if (mouseX>headX-75 && mouseX < headX+75 &&
    mouseY< headY+75 && mouseY > headY-75) {
    draggingHead = true;
  }

  if (dist(mouseX, mouseY, bodyX, bodyY) < 130) {
    draggingBody = true;
  }

  prevMouseX = mouseX;
  prevMouseY = mouseY;
}

void mouseDragged() {

  if (draggingHead) {
    headX = mouseX;
    headY = mouseY;
  }

  if (draggingBody) {
    float dx = mouseX - prevMouseX;
    float dy = mouseY - prevMouseY;

    bodyX += dx;
    bodyY += dy;

    headX += dx;
    headY += dy;

    headXorig += dx;
    headYorig += dy;
  }

  prevMouseX = mouseX;
  prevMouseY = mouseY;
}

void mouseReleased() {
  draggingHead = false;
  draggingBody = false;
}

void draw() {

  strokeWeight(1);
  background(255);


  dX = headXorig - headX;
  dY = headYorig - headY;


  if (mouseX>bodyX-110 && mouseX<bodyX+110 && mouseY>bodyY-110 && mouseY<bodyY+110) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
  circle(bodyX, bodyY, 250);


  if (mouseX<headX-75 || mouseX > headX+75 || mouseY> headY+75 || mouseY < headY-75) {

    fill(255);

    if (!draggingHead) {
      headX += dX * spd * 0.01;
      headY += dY * spd * 0.01;
    }
  } else {
    fill(255, 0, 0);
  }

  circle(headX, headY, 150);

  eyes(headX-40, headY, 50);
  eyes(headX+40, headY, 50);


  hAnchorX = headX;
  hAnchorY = headY +75;

  line(hAnchorX, hAnchorY, headXorig, headYorig + 75);

  if (draggingHead) {
    strokeWeight(11);
    line(headX-10, headY-30, headX-40, headY-50);
    line(headX+10, headY-30, headX+40, headY-50);
  }
}


void eyes(float eyex, float eyey, float size) {

  float maxdist = size*0.266;
  float dx = mouseX - eyex;
  float dy = mouseY - eyey;

  float currentdist = dist(mouseX, mouseY, eyex, eyey);
  float eyedist = min(currentdist, maxdist);

  float angle = atan2(dy, dx);

  float eyeposX = eyex + cos(angle) * eyedist;
  float eyeposY = eyey + sin(angle) * eyedist;

  fill(255);
  circle(eyex, eyey, size);

  fill(0);
  circle(eyeposX, eyeposY, size*0.4);
}
