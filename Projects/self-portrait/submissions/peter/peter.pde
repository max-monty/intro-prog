float x = 400;
float y = 0.01;
float smileFactor = 0.01;
boolean night = false;
float smile1 = 0.1;
float smile2 = 2;
boolean fireworks = false;
float randox  = random(300, 800);
float red = random(255);
float green = random(255);
float blue = random(255);
boolean suns = false;              // variable initializations
void setup() {
  size(900, 800);
}

void draw() {
  backs();
  fill(50);
  stroke(50);
  arc(450, 800, 360, 400, PI, TWO_PI);
  toggles();
  fireWorkFunc();
  strokeWeight(1);
  neckplus();
  outline();
  hat();
  eyes();
  lips();
  ears();
  sunnyFunc();
}


void lips() {
  noFill();                    // lips start
  stroke(210, 153, 133);
  strokeWeight(5);


  y = y + smileFactor;
  if (y >= 0.2 ||y <= - 1) {
    smileFactor = smileFactor * -1;
  }
  smile2 = smile2 + smile1;
  if (smile2 >= 10 || smile2 <= 1.9) {
    smile1 = smile1 * -1;
  }
  if (!night) {
    arc(450, 515, 100, 25, 0 - y, PI + y);
  }
  if (night) {
    stroke(0);
    line(430 - smile2, 515 + smile2, 470 + smile2, 530 - smile2);
  }                   // lips end
}


void neckplus() {
  fill(234, 204, 171); // neck start
  stroke(234, 204, 171);
  rectMode(CENTER);
  rect(450, 599, 100, 100); // neck done

  fill(255);                 // shirt start
  stroke(255);
  arc(450, 800, 360, 400, radians(250), radians(290));          // shirt done

  fill(70, 130, 180);             // tie start
  stroke(70, 130, 180);
  circle(450, 625, 50);

  triangle(430, 735, 450, 640, 470, 735);
  triangle(430, 735, 450, 755, 470, 735);        // tie done
}

void hat() {
  fill(50);             // hat start
  stroke(50);
  arc(450, 425, 145, 120, PI, TWO_PI);
  arc(370, 425, 80, 25, PI, TWO_PI);
  arc(530, 425, 80, 25, PI, TWO_PI);        // hat done
}

void outline() {
  fill(244, 214, 181); // outline face start
  stroke(244, 214, 181);
  ellipse(450, 475, 155, 200); // outline face done
}
void ears() {
  strokeWeight(1);                    // ears start
  stroke(244, 214, 181);
  fill(244, 214, 181);

  ellipse(380, 470, 30, 45);
  ellipse(520, 470, 30, 45);

  noFill();
  stroke(50);
  arc(450, 485, 25, 12, HALF_PI, PI + HALF_PI);           // ears done
}
void eyes() {
  noFill();                                 // eyes start
  //arc(413, 460, 25, 12, PI, TWO_PI);
  //arc(483, 460, 25, 12, PI, TWO_PI);
  fill(50);
  circle(413, 460, 22);
  circle(483, 460, 22);
  fill(255);
  ellipse(413, 460, -4.5, 7.5);
  ellipse(483, 460, -4.5, 7.5);
  noFill();
  strokeWeight(2);
  if (!suns || night) {
    arc(413, 445, 30, 10, PI + 0.5, TWO_PI - 0.5);
    arc(483, 445, 30, 10, PI + 0.5, TWO_PI - 0.5);        // eyes done
  }
}




void mousePressed() {
  if (mouseX >= 5 && mouseX <= 195) {
    if (mouseY >= 50 && mouseY <= 150) {
      night = !night;
    } else if (mouseY>= 175 && mouseY <= 275) {
      if (night) {
        fireworks = !fireworks;
      } else {
        suns = !suns;
      }
    }
  }
}

void backs() {
  if (night) {                     // bg if night
    background(0, 0, 53);
    fill(255);
    randomStars();
  } else {               // bg if day
    if (!suns) {
      background(170, 167, 204);
      for (float x = 0; x < width; x= x + 30) {
        for (float y = 0; y < height; y = y + 30) {
          stroke(255, 255, 255, 50);
          line(x, y, x + mouseX/12, y + mouseY/12);
        }
      }
    } else {                   // bg if sunny
      background(210, 205, 150);
    }
  }
}

void toggles() {           // buttons start
  fill(173, 216, 230);
  rectMode(CENTER);
  rect(100, 100, 190, 100);
  textSize(50);
  textAlign(CENTER, CENTER);
  fill(0);
  if (!night) {
    text("Night", 100, 100);
  } else {
    text("Day", 100, 100);
  }
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(0);
  if (night) {
    fill(173, 216, 230);
    rect(100, 225, 190, 100);
    fill(0);
    if (!fireworks) {
      text("FireWorks", 100, 225);
    } else {
      text("Stop", 100, 225);
    }
  }
  if (!night) {
    fill(173, 216, 230);
    rect(100, 225, 190, 100);
    textSize(50);
    textAlign(CENTER, CENTER);
    fill(0);
    if (!suns) {
      text("Sunny", 100, 225);
    } else {
      text("Stop", 100, 225);             // buttons done
    }
  }
  strokeWeight(1);
}



int diameter = 30;

void fires() {
  noFill();                     // fireworks start
  strokeWeight(3);
  stroke(red, green, blue);
  if (diameter <= 200) {
    if (frameCount % 8 == 0) {
      circle(randox, 300, diameter);
      diameter += 10;
    }
  } else {

    fill(red, green, blue);
    circle(randox, 300, diameter);
    if (frameCount % 10 == 0) {
      diameter = 0;
      randox = random(250, width);
      red = random(255);
      green = random(255);
      blue = random(255);

      strokeWeight(1);
      fill(255);
      stroke(0);             //fireworks done
    }
  }
}


void fireWorkFunc() {
  if (fireworks) {
    fires();
  }
}


void sunnyFunc() {
  if (suns) {
    if (!night) {
      fill(0, 0, 0, mouseY/3.5);               // sunglasses start
      arc(413, 442, 50, 70, 0, PI);
      arc(483, 442, 50, 70, 0, PI);
      strokeWeight(5);
      stroke(0);
      line(388, 444, 374, 435);
      line(508, 444, 526, 435);
      fill(255, 195, 11);
      circle(850, 0, 200);
      stroke(245, 205, 22);
      stroke(0);
      line(388, 444, 508, 444);                 // sunglasses done
    }
  }
  strokeWeight(1);
}

void randomStars(){
    circle(random(width), random(height), 2);    // for the night bg
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
    circle(random(width), random(height), 2);
}
