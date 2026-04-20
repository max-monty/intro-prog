int language;
boolean french;
boolean spanish;
boolean german;
boolean mandarin;
boolean hebrew;
boolean portu;
boolean arabic;
float boi;

void face() {
  noStroke();
  fill(255);
  circle(530, 460, 40);
  fill(boi, 30, 150);
  circle(530, 460, 20);
  fill(255);
  circle(670, 460, 40);
  fill(boi, 30, 150);
  circle(670, 460, 20);
  stroke(0);
  noFill();
  strokeWeight(5);
  circle(530, 465, 80);
  circle(670, 465, 80);
  strokeWeight(3);
  line(570, 465, 630, 465);
  line(565, 485, 635, 485);
  strokeWeight(5);
  line(500, 410, 700, 410);
  fill(0);
  circle(600, 600, 40);
}



void setup() {
  size(1000, 1000);
  language = 1;
  strokeWeight(5);
  background(100, 150, 230);
  fill(226, 185, 143);
  circle(600, 500, 400);
  fill(255);
  rect(50, 100, 400, 280, 50);
  face();
  fill(0);
  textSize(100);
  text("I'm Guy", 80, 200);
  french = false;
  arabic = false;
  spanish = false;
  german = false;
  mandarin = false;
  hebrew = false;
  portu = false;
  if (language == 1) {
    boi = 20;
  }
  if (language>=1 && language <=2) {
    boi = 50;
  }
  if (language>=2 && language <= 3) {
    boi = 90;
  }
  if (language>=3 && language <= 4) {
    boi = 130;
  }
  if (language>=4 && language <= 5) {
    boi = 170;
  }
  if (language>=5 && language <= 6) {
    boi = 210;
  }
  if (language>=6 && language <= 7) {
    boi = 250;
  }
  if (language>=7 && language <= 8) {
    boi = 255;
  }
}

void draw() {
}

void mousePressed() {
  language = language + 1;
  if (language == 2) {
    french=!french;
    spanish = false;
    german = false;
    mandarin = false;
    hebrew = false;
    portu = false;
    arabic = false;
  }
  if (language == 3) {
    spanish=!spanish;
    french = false;
    german = false;
    mandarin = false;
    hebrew = false;
    portu = false;
    arabic = false;
  }
  if (language == 4) {
    german=!german;
    french = false;
    spanish = false;
    mandarin = false;
    hebrew = false;
    portu = false;
    arabic = false;
  }
  if (language == 5) {
    mandarin=!mandarin;
    french = false;
    spanish = false;
    german = false;
    hebrew = false;
    portu = false;
    arabic = false;
  }
  if (language == 6) {
    hebrew=!hebrew;
    french = false;
    spanish = false;
    german = false;
    mandarin = false;
    portu = false;
    arabic = false;
  }
  if (language == 7) {
    portu = !portu;
    hebrew= false;
    french = false;
    spanish = false;
    german = false;
    mandarin = false;
    arabic = false;
  }
  if (language == 8) {
    portu = false;
    hebrew= false;
    french = false;
    spanish = false;
    german = false;
    mandarin = false;
    arabic = !arabic;
  }
  if (french) {
    background(100, 150, 230);
    fill(226, 185, 143);
    circle(600, 500, 400);
    fill(255);
    rect(50, 100, 400, 280, 50);
    //
    face();
    //
    fill(0);
    textSize(75);
    text("je m'appelle", 60, 200);
    text("Guy", 80, 300);
  } else if (spanish) {
    background(100, 150, 230);
    fill(226, 185, 143);
    circle(600, 500, 400);
    fill(255);
    rect(50, 100, 400, 280, 50);
    //
    face();
    //
    fill(0);
    textSize(65);
    text("Mi nombre es", 80, 200);
    text("Guy", 80, 300);
  } else if (german) {
    background(100, 150, 230);
    fill(226, 185, 143);
    circle(600, 500, 400);
    fill(255);
    rect(50, 100, 400, 280, 50);
    //
    face();
    //
    fill(0);
    textSize(60);
    text("Mein Name ist", 80, 200);
    text("Guy", 80, 300);
  } else if (mandarin) {
    background(100, 150, 230);
    fill(226, 185, 143);
    circle(600, 500, 400);
    fill(255);
    rect(50, 100, 400, 280, 50);
    //
    face();
    //
    fill(0);
    textSize(100);
    text("Wǒ jiào", 80, 200);
    text("gài yī", 80, 300);
  } else if (hebrew) {
    background(100, 150, 230);
    fill(226, 185, 143);
    circle(600, 500, 400);
    fill(255);
    rect(50, 100, 400, 280, 50);
    //
    face();
    //
    fill(0);
    textSize(100);
    text("Shmi", 80, 200);
    text("Guy", 80, 300);
  } else if (portu) {
    background(100, 150, 230);
    fill(226, 185, 143);
    circle(600, 500, 400);
    fill(255);
    rect(50, 100, 400, 280, 50);
    //
    face();
    //
    fill(0);
    textSize(60);
    text("O meu nome é", 80, 200);
    text("Guy", 80, 300);
  }
  if (language >= 9) {
    size(1000, 1000);
    strokeWeight(5);
    background(255, 0, random(100));
    fill(226, 185, 143);
    circle(600, 500, 400);
    fill(255);
    rect(50, 100, 400, 280, 50);
    noStroke();
    fill(255);
    circle(530, 460, 40);
    fill(255, 0, 0);
    circle(530, 460, 20);
    fill(255);
    circle(670, 460, 40);
    fill(255, 0, 0);
    circle(670, 460, 20);
    stroke(0);
    noFill();
    strokeWeight(5);
    circle(530, 465, 80);
    circle(670, 465, 80);
    strokeWeight(3);
    line(570, 465, 630, 465);
    line(565, 485, 635, 485);
    strokeWeight(5);
    line(500, 390, 600, 410);
    line(600, 410, 700, 390);
    fill(0);
    circle(600, 600, 40);
    fill(0);
    textSize(100);
    text("OK,", 80, 200);
    text("enough", 80, 280);
  } else if (arabic) {
    background(100, 150, 230);
    fill(226, 185, 143);
    circle(600, 500, 400);
    fill(255);
    rect(50, 100, 400, 280, 50);
    //
    face();
    //
    fill(0);
    textSize(80);
    text("asmi hu", 80, 200);
    text("Guy", 80, 300);
  }
}


void keyPressed() {
  while (key == 'r') {
    language = 1;
    strokeWeight(5);
    background(100, 150, 230);
    fill(226, 185, 143);
    circle(600, 500, 400);
    fill(255);
    rect(50, 100, 400, 280, 50);
    noStroke();
    fill(255);
    circle(530, 460, 40);
    fill(boi, 30, 150);
    circle(530, 460, 20);
    fill(255);
    circle(670, 460, 40);
    fill(boi, 30, 150);
    circle(670, 460, 20);
    stroke(0);
    noFill();
    strokeWeight(5);
    circle(530, 465, 80);
    circle(670, 465, 80);
    strokeWeight(3);
    line(570, 465, 630, 465);
    line(565, 485, 635, 485);
    strokeWeight(5);
    line(500, 410, 700, 410);
    fill(0);
    circle(600, 600, 40);
    fill(0);
    textSize(100);
    text("all better", 70, 200);
    break;
  }
}
