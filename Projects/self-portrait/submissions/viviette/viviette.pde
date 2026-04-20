String FirstWord = "Hello";
String SecondWord = "all";
String phrase;
int pupilSize = 40;
boolean glasses = false;
boolean pearlEarrings = false;

void setup() {
  size(600, 600);
  background (255, 182, 193);
}

void draw () {
  noStroke();

  // background flowers
  int x = 50;

  while (x < width) {
    int y = 80;

    while (y < height) {

      // petals
      fill(random(255), random(255), random(255) );
      ellipse(x - 10, y, 15, 15);
      ellipse(x + 10, y, 15, 15);
      ellipse(x, y - 10, 15, 15);
      ellipse(x, y + 10, 15, 15);

      // center
      fill(255, 220, 0);
      ellipse(x, y, 12, 12);

      y += 120;
    }
    x += 120;
  }


  // --- HAIR ---
  fill(30);
  ellipse(300, 330, 420, 650);

  // --- HEAD ---
  fill (232, 190, 172);
  ellipse(300, 250, 295, 380);

  // --- EARS ---
  ellipse(160, 220, 60, 100);  // Left ear
  ellipse(440, 220, 60, 100);  // Right ear

  // --- NOSE ---
  fill(210, 160, 145);
  triangle(300, 245, 285, 290, 315, 290);

  noStroke();

  // --- NECK ---
  fill(232, 190, 172);
  rect(250, 350, 100, 200, 20);

  // --- SHIRT ---
  // Check if mouse is inside the ellipse
  if (mouseX > 120 && mouseX < 480 && mouseY > 480 && mouseY < 980) {

    if (mouseX < 300) {
      if (mouseY < 730) {
        fill(245, 245, 176); // left
      }
    } else {
      if (mouseY < 730) {
        fill(198, 247, 247); // right
      }
    }
  } else {
    fill(232, 190, 172); // default color when mouse is outside
  }

  // Draw the ellipse
  ellipse(300, 730, 450, 500);

  // Mouth and comment
  // --- MOUTH ---
  fill (189, 100, 97);
  ellipse (300, 340, 85, 40);

  // thin line between lips
  fill(165, 82, 80);
  ellipse(300, 340, 70, 4);

  phrase = FirstWord + " " + SecondWord + "! ";
  // Draw text on forehead
  fill(0);                  // black text
  textSize(24);
  textAlign (CENTER, CENTER);
  text(phrase, 380, 355);

  drawEyes();


  // --- EARRINGS ---
  if (pearlEarrings) {
    fill(255);
    noStroke();
    ellipse(150, 265, 15, 15); // left pearl
    ellipse(450, 265, 15, 15); // right pearl
  } else {
    stroke(212, 175, 55); // gold color
    strokeWeight(6);
    noFill();
    ellipse(150, 270, 15, 45); // left hoop
    ellipse(450, 270, 15, 45); // right hoop
  }
}
void drawEyes() {
  // --- EYES ---

  // White part
  fill(255);
  ellipse(240, 220, 75, 40);  // Left eye
  ellipse(360, 220, 75, 40);  // Right eye



  // Pupils
  fill(0);
  circle(240, 220, pupilSize);
  circle(360, 220, pupilSize);


  float lashExtension = map(mouseX, mouseY, height, 20, 150);
  if (mouseY < 250) {
    stroke(0); // black
  } else {
    stroke(66, 135, 245); // blue
  }

  strokeWeight(2);


  // Left eye
  line(220, 211, 220, 210 - lashExtension);
  line(230, 202, 230, 210 - lashExtension);
  line(240, 200, 240, 210 - lashExtension);
  line(250, 202, 250, 210 - lashExtension);
  line(260, 210, 260, 210 - lashExtension);

  // Right eye
  line(340, 211, 340, 210 - lashExtension);
  line(350, 202, 350, 210 - lashExtension);
  line(360, 200, 360, 210 - lashExtension);
  line(370, 202, 370, 210 - lashExtension);
  line(380, 210, 380, 210 - lashExtension);
}

void mousePressed () {
  pearlEarrings = !pearlEarrings; // toggle different earrings on click
}
