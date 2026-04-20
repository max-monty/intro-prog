


void setup() {

  size(800, 800);
  background(255);

  for (int x = 0; x < width; x += 50) {
    for (int y = 0; y < height; y += 50) {
      fill(180, 210, 255);
      rect(x, y, 50, 50);

      fill(150, 180, 240);
      ellipse(x + 25, y + 25, 20, 20);
    }
  }
}


void mousePressed() {

  fill(random(255), random(255), random(255));
  circle(500, 400, 40);
  circle(300, 400, 40);
}


void draw() {
  float mouthSize = map(mouseY, 0, height, 20, 120);

  fill(0);
  ellipse(400, 440, 460, 600); //hair
  rect(180, 530, 440, 300); //hair



  fill(255, 139, 217);
  rect(140, 680, 500, 500); //shirt
  ellipse(190, 870, 300, 400);
  ellipse(600, 870, 300, 400);

  fill(170, 119, 79);
  rect(290, 500, 210, 200); //neck
  circle(390, 770, 260); //

  fill(193, 138, 96);
  ellipse(220, 400, 100, 150); // left ear
  ellipse(580, 400, 100, 150); //right ear

  fill(255);
  circle(210, 470, 40);
  circle(586, 470, 40);


  fill(193, 138, 96);
  noStroke();
  ellipse(400, 400, 370, 450); //head

  fill(247, 167, 195);
  ellipse(510, 450, 60, 40); //right blush
  ellipse(290, 450, 60, 40); //left blush

  stroke(0);
  line(400, 400, 400, 450); //nose
  line(400, 450, 415, 450);

  noStroke();

  fill(255);
  ellipse(500, 400, 100, 70); //right eye
  ellipse(300, 400, 100, 70); //left eye

  fill(0);
  ellipse(500, 400, 70, 65); //right pupil
  ellipse(300, 400, 70, 65); //left pupil

  fill(193, 138, 96);
  rect(450, 320, 100, 60); //right eyelid
  rect(250, 320, 100, 60); //left eyelid

  fill(0);
  ellipse(490, 350, 100, 20); //right eyebrow
  ellipse(310, 350, 100, 20); //left eyelid





  if (mouseX >= 380 && mouseX <= 480) {
    circle(400, 500, mouthSize);
  } else {
    circle(400, 500, 50);
  }
}


void mouseDragged() {

  fill(random(255), random(255), random(255));
  circle(mouseX, mouseY, 35);
}
