PImage img;

boolean confettiOn = false;
boolean confettiActive = false;
int confettiTimer;
color bgColor = color(0);

float shoulderAngle;
float elbowAngle;
float playerX = 200;
float groundY = 100;
float playerY = groundY;

int jumpStart = 40;
int jumpTime = 100;

boolean jumping = true;
float t = 0;
float jumpSpeed = 0.02;
float jumpH = 280;
float runSpeed = 6;

float yOffset;

float hoopX = 1190;
float hoopY = 162;
float rimTilt;
float netDrop;

boolean ballDrop = false;
float ballScreenX, ballScreenY;
float ballVy = 0;
float gravity = 1.2;

int holdFrames = 16;      
float holdProgress = 0.89;  
int totalFrames = 180 + holdFrames;

int holdStartFrame;          
int holdEndFrame;


// Smoothstep function for smooth movement of animation
float ease(float x) {        
  x = constrain(x, 0, 1);
  return x*x*(3 - 2*x);
}

float cameraShakeX = 0, cameraShakeY = 0;
float cameraTilt = 0;          
int shakeTimer = 0;
float shakeMagnitude = 0;

void setup() {
  size(1600, 1600);
  img = loadImage("lebronDunk.png");
  background(0);

  stroke(255, 0, 0);
  strokeWeight(8);
  point(0, 0);
  noStroke();
  fill(255);
  delay(1000);
  println("ignore");
  println("beginShape();");
  //image(img, -20, -5);
}

void draw() {
  background(0);
 
  // Hold setup
  int frame = frameCount % totalFrames;
  holdStartFrame = jumpStart + int(jumpTime * holdProgress);
  holdEndFrame = holdStartFrame + holdFrames;
 
 
  //Weird piecewise function for jump progress that could probably be done better
  float jumpProgress;
  if (frame < jumpStart) {
  jumpProgress = 0;
 
  } else if (frame < holdStartFrame) {
    float v = (frame - jumpStart) / (float)(holdStartFrame - jumpStart);
    jumpProgress = v * holdProgress;
 
  } else if (frame < holdEndFrame) {
  jumpProgress = holdProgress;
  } else {
  int endFrame = jumpStart + jumpTime + holdFrames;
  float v = (frame - holdEndFrame) / (float)(endFrame - holdEndFrame);
  v = constrain(v, 0, 1);
  jumpProgress = holdProgress + v * (1 - holdProgress);
}
  int runFrame;
 
  if (frame < holdStartFrame) {
    runFrame = frame;
  } else if (frame < holdEndFrame) {
    runFrame = holdStartFrame;
  } else {
    runFrame = frame - holdFrames;
  }
 
 
 // Ball falling logic
  if (frame == 0) {
    ballDrop = false;
    ballVy = 0;
  }else if (frame == holdStartFrame) {
    shakeTimer = 10;
    shakeMagnitude = 12;
    cameraTilt = radians(-6);
  }else if (!ballDrop && frame == holdEndFrame) {
   ballDrop = true;
      ballScreenX = hoopX;
      ballScreenY = hoopY + 50;
      ballVy = 0;
  }
 
 
  // camera shake logic
  if (shakeTimer > 0) {
  cameraShakeX = random(-shakeMagnitude, shakeMagnitude);
  cameraShakeY = random(-shakeMagnitude, shakeMagnitude);
  shakeTimer--;
  shakeMagnitude *= 0.85;      
} else {
  cameraShakeX = 0;
  cameraShakeY = 0;
}
cameraTilt *= 0.85;
  playerX = runSpeed * runFrame;
 

  //Jumping movement
  jumpProgress = constrain(jumpProgress, 0, 1);

  yOffset = -2.5 * jumpH * jumpProgress * (1 - jumpProgress);
  playerY = groundY + yOffset;

// Arm rotation
  float shCarry = radians(-20);
  float shBack = radians(-40);
  float shDunk = radians(150);

  float elCarry = radians(30);
  float elBack = radians(0);
  float elDunk = radians(30);

  if (jumpProgress <= 0) {
    shoulderAngle = shCarry;
    elbowAngle = elCarry;
  } else if (jumpProgress < 0.5) {
    float v = jumpProgress / 0.5;
    v = ease(v);
    shoulderAngle = lerp(shCarry, shBack, v);
    elbowAngle = lerp(elCarry, elBack, v);
  } else if ( jumpProgress < 0.9) {
    float v = (jumpProgress - 0.5) / 0.5;
    v = ease(v);
    shoulderAngle = lerp(shBack, shDunk, v);
    elbowAngle = lerp(elBack, elDunk, v);
    } else if(jumpProgress > 0.9) {
      float v = (jumpProgress - 0.9) / 0.1;
      v = ease(v);
      shoulderAngle = lerp(shDunk, shCarry, v);
      elbowAngle = lerp(elDunk, elCarry, v);
    }

 //Ball movement
  if (ballDrop) {
    ballVy += gravity;
    ballScreenY += ballVy;
  }
 
// Confetti Logic
 
 if (frame == holdStartFrame && confettiOn) {
  confettiActive = true;
  confettiTimer = 25;  
}

if (confettiTimer > 0) {
  confettiTimer--;
} else {
  confettiActive = false;
}

if (frame == 0) {
  confettiActive = false;
  confettiTimer = 0;
}

// Jumping timer set

  if (jumping) {
    t += jumpSpeed;
    if (t >= 1) {
      t = 1;
      jumping = false;
    };
  }

//Draw everything
  pushMatrix();
  //This looks weird but thought I would leave it
  //translate(width/2, height/2);
  //rotate(cameraTilt);
  //translate(-width/2, -height/2);
  translate(cameraShakeX, cameraShakeY);
 
 
  drawHoop(hoopX, hoopY);
  drawBackground();
  pushMatrix();
  translate(playerX, playerY);
  drawLeft();
  drawRight();

  

  popMatrix();
  
  if (ballDrop) {
  fill(247, 148, 42);
  circle(ballScreenX, ballScreenY, 72);
  }
  // To get the basketball to stay behind the hand
  pushMatrix();
  translate(playerX, playerY);
  drawRightarm(shoulderAngle, elbowAngle);
  popMatrix();
  drawNet(hoopX, hoopY);
  popMatrix();


  stroke(255, 0, 0);
  strokeWeight(8);
  point(0, 0);
  noStroke();
  fill(255);
//Conffeti status
  pushStyle();
  fill(255);
  textAlign(LEFT, TOP);
  textSize(22);
  text("Confetti = " + (confettiOn ? "ON" : "OFF"), 20, 20);
  popStyle();
 //Draw confetti
 
 if (confettiOn && confettiTimer > 0) {
  noStroke();
  for (int i = 0; i < 80; i++) {
    fill(random(255), random(255), random(255));
    ellipse(random(width), random(height/2), 6, 6);
  }
 
}
}
// Draw back of LeBron
void drawLeft() {

  //leftHand
  fill(130, 92, 38);
  beginShape();
  vertex(471, 389);
  vertex(476, 396);
  vertex(483, 400);
  vertex(488, 403);
  vertex(490, 413);
  vertex(495, 416);
  vertex(494, 412);
  vertex(494, 407);
  vertex(495, 403);
  vertex(498, 402);
  vertex(503, 408);
  vertex(506, 413);
  vertex(510, 413);
  vertex(509, 409);
  vertex(506, 404);
  vertex(504, 402);
  vertex(502, 399);
  vertex(500, 397);
  vertex(501, 395);
  vertex(506, 395);
  vertex(507, 402);
  vertex(511, 405);
  vertex(511, 403);
  vertex(511, 398);
  vertex(508, 392);
  vertex(514, 394);
  vertex(518, 394);
  vertex(517, 389);
  vertex(512, 386);
  vertex(503, 380);
  vertex(498, 376);
  vertex(491, 373);
  vertex(483, 373);
  vertex(474, 373);
  vertex(467, 380);
  endShape(CLOSE);

  //LEftforearm
  beginShape();
  vertex(473, 388);
  vertex(463, 386);
  vertex(452, 384);
  vertex(438, 380);
  vertex(425, 375);
  vertex(417, 372);
  vertex(404, 365);
  vertex(402, 354);
  vertex(401, 340);
  vertex(404, 332);
  vertex(409, 334);
  vertex(416, 336);
  vertex(426, 342);
  vertex(435, 350);
  vertex(443, 353);
  vertex(454, 362);
  vertex(465, 368);
  vertex(474, 374);
  endShape(CLOSE);

  //LEftbicep
  beginShape();
  vertex(404, 330);
  vertex(401, 311);
  vertex(400, 299);
  vertex(396, 292);
  vertex(387, 289);
  vertex(378, 290);
  vertex(374, 295);
  vertex(367, 312);
  vertex(368, 324);
  vertex(368, 340);
  vertex(379, 352);
  vertex(386, 364);
  vertex(397, 367);
  vertex(407, 365);
  endShape(CLOSE);

  //Left shoulder
  fill(130, 92, 38);
  beginShape();
  vertex(400, 296);
  vertex(402, 287);
  vertex(401, 272);
  vertex(399, 259);
  vertex(392, 246);
  vertex(381, 233);
  vertex(369, 234);
  vertex(367, 256);
  vertex(369, 270);
  vertex(365, 288);
  vertex(368, 311);
  vertex(369, 323);
  vertex(384, 323);
  endShape(CLOSE);


  //Leftknee
  fill(130, 92, 38);
  beginShape();
  vertex(341, 450);
  vertex(341, 463);
  vertex(340, 475);
  vertex(340, 485);
  vertex(340, 493);
  vertex(337, 503);
  vertex(336, 514);
  vertex(339, 519);
  vertex(345, 523);
  vertex(350, 526);
  vertex(357, 532);
  vertex(364, 529);
  vertex(369, 525);
  vertex(374, 521);
  vertex(378, 514);
  vertex(381, 507);
  vertex(384, 495);
  vertex(385, 487);
  vertex(388, 481);
  vertex(391, 473);
  vertex(392, 466);
  vertex(392, 460);
  vertex(391, 449);
  vertex(381, 440);
  vertex(357, 435);
  vertex(341, 445);
  endShape(CLOSE);

  //LeftCalf
  fill(130, 92, 38);
  beginShape();
  vertex(338, 491);
  vertex(350, 493);
  vertex(363, 497);
  vertex(371, 507);
  vertex(373, 522);
  vertex(365, 527);
  vertex(359, 529);
  vertex(351, 531);
  vertex(341, 536);
  vertex(331, 537);
  vertex(321, 540);
  vertex(307, 544);
  vertex(297, 547);
  vertex(282, 551);
  vertex(271, 553);
  vertex(265, 553);
  vertex(254, 556);
  vertex(244, 559);
  vertex(240, 561);
  vertex(234, 560);
  vertex(227, 536);
  vertex(233, 537);
  vertex(239, 535);
  vertex(241, 531);
  vertex(249, 530);
  vertex(258, 526);
  vertex(265, 523);
  vertex(276, 518);
  vertex(286, 511);
  vertex(292, 505);
  vertex(304, 500);
  vertex(314, 498);
  vertex(323, 495);
  vertex(332, 494);
  endShape(CLOSE);


  //leftShort
  fill(255, 193, 36);
  beginShape();
  vertex(314, 457);
  vertex(323, 457);
  vertex(335, 460);
  vertex(346, 458);
  vertex(359, 459);
  vertex(355, 458);
  vertex(364, 460);
  vertex(370, 460);
  vertex(376, 461);
  vertex(385, 461);
  vertex(394, 461);
  vertex(399, 461);
  vertex(399, 451);
  vertex(398, 443);
  vertex(397, 424);
  vertex(396, 413);
  vertex(394, 399);
  vertex(392, 384);
  vertex(389, 379);
  vertex(377, 379);
  vertex(354, 379);
  vertex(344, 379);
  vertex(335, 379);
  vertex(323, 379);
  vertex(320, 379);
  vertex(323, 384);
  vertex(323, 394);
  vertex(327, 400);
  vertex(329, 408);
  vertex(327, 416);
  vertex(325, 427);
  vertex(321, 437);
  vertex(316, 446);
  vertex(312, 456);
  endShape(CLOSE);

  //left shoe
  fill(82, 58, 140);
  beginShape();
  vertex(237, 559);
  vertex(235, 551);
  vertex(232, 544);
  vertex(228, 538);
  vertex(226, 534);
  vertex(223, 532);
  vertex(222, 531);
  vertex(214, 529);
  vertex(209, 524);
  vertex(205, 520);
  vertex(199, 517);
  vertex(191, 518);
  vertex(186, 527);
  vertex(182, 534);
  vertex(179, 542);
  vertex(179, 555);
  vertex(177, 564);
  vertex(174, 574);
  vertex(170, 580);
  vertex(171, 593);
  vertex(171, 608);
  vertex(174, 615);
  vertex(180, 614);
  vertex(186, 614);
  vertex(191, 611);
  vertex(195, 608);
  vertex(197, 600);
  vertex(197, 596);
  vertex(199, 592);
  vertex(202, 585);
  vertex(208, 580);
  vertex(215, 575);
  vertex(219, 569);
  vertex(222, 562);
  vertex(235, 561);
  vertex(236, 556);
  vertex(236, 546);
  vertex(230, 539);
  endShape(CLOSE);
}


//Draw front and torso
void drawRight() {

  //Head
  fill(130, 92, 38);
  beginShape();
  vertex(370, 229);
  vertex(353, 232);
  vertex(331, 227);
  vertex(311, 222);
  vertex(311, 217);
  vertex(297, 201);
  vertex(295, 187);
  vertex(302, 174);
  vertex(311, 168);
  vertex(326, 165);
  vertex(336, 167);
  vertex(343, 177);
  vertex(354, 183);
  vertex(349, 188);
  vertex(356, 188);
  vertex(355, 192);
  vertex(359, 192);
  vertex(359, 200);
  vertex(365, 206);
  vertex(356, 209);
  vertex(346, 210);
  vertex(349, 216);
  vertex(356, 227);
  endShape(CLOSE);

  //hair
  fill(12, 8, 3);
  beginShape();
  vertex(311, 209);
  vertex(304, 214);
  vertex(300, 211);
  vertex(296, 204);
  vertex(292, 200);
  vertex(292, 194);
  vertex(291, 189);
  vertex(293, 183);
  vertex(295, 178);
  vertex(299, 172);
  vertex(304, 167);
  vertex(310, 164);
  vertex(316, 161);
  vertex(324, 160);
  vertex(332, 162);
  vertex(335, 166);
  vertex(329, 170);
  vertex(323, 172);
  vertex(320, 176);
  vertex(321, 181);
  vertex(320, 188);
  vertex(318, 191);
  vertex(318, 196);
  vertex(315, 197);
  vertex(311, 196);
  vertex(308, 196);
  vertex(308, 202);
  vertex(310, 207);
  endShape(CLOSE);

  //Beard
  fill(12, 8, 3);
  beginShape();
  vertex(321, 204);
  vertex(325, 211);
  vertex(330, 217);
  vertex(338, 218);
  vertex(347, 219);
  vertex(356, 220);
  vertex(365, 221);
  vertex(371, 220);
  vertex(376, 217);
  vertex(374, 213);
  vertex(370, 207);
  vertex(366, 203);
  vertex(363, 201);
  vertex(361, 202);
  vertex(359, 205);
  vertex(352, 207);
  vertex(345, 206);
  vertex(338, 206);
  vertex(330, 204);
  vertex(324, 202);
  vertex(322, 200);
  endShape(CLOSE);


  //rightKnee
  fill(130, 92, 38);
  beginShape();
  vertex(377, 431);
  vertex(393, 453);
  vertex(402, 466);
  vertex(413, 481);
  vertex(424, 482);
  vertex(436, 478);
  vertex(444, 479);
  vertex(447, 473);
  vertex(449, 461);
  vertex(446, 451);
  vertex(440, 430);
  vertex(437, 422);
  vertex(408, 413);
  vertex(381, 417);
  vertex(382, 436);
  vertex(384, 443);
  endShape(CLOSE);

  //Rightcalf
  fill(130, 92, 38);
  beginShape();
  vertex(367, 597);
  vertex(373, 582);
  vertex(385, 560);
  vertex(390, 551);
  vertex(399, 534);
  vertex(411, 517);
  vertex(425, 505);
  vertex(443, 480);
  vertex(434, 460);
  vertex(413, 459);
  vertex(402, 465);
  vertex(395, 478);
  vertex(388, 487);
  vertex(380, 507);
  vertex(372, 525);
  vertex(365, 539);
  vertex(357, 554);
  vertex(344, 578);
  vertex(341, 589);
  vertex(346, 601);
  vertex(360, 600);
  endShape(CLOSE);

  //Rightshort
  fill(255, 193, 36);
  beginShape();
  vertex(319, 336);
  vertex(315, 353);
  vertex(314, 370);
  vertex(320, 386);
  vertex(332, 404);
  vertex(342, 423);
  vertex(352, 444);
  vertex(361, 466);
  vertex(376, 447);
  vertex(395, 433);
  vertex(414, 427);
  vertex(438, 422);
  vertex(434, 413);
  vertex(422, 394);
  vertex(416, 378);
  vertex(416, 370);
  vertex(406, 348);
  vertex(401, 344);
  vertex(390, 329);
  vertex(355, 316);
  vertex(324, 319);
  endShape(CLOSE);

  //rightShoe
  fill(82, 58, 140);
  beginShape();
  vertex(346, 578);
  vertex(338, 577);
  vertex(337, 582);
  vertex(329, 582);
  vertex(324, 586);
  vertex(312, 602);
  vertex(320, 616);
  vertex(330, 629);
  vertex(330, 642);
  vertex(351, 660);
  vertex(362, 667);
  vertex(375, 664);
  vertex(380, 660);
  vertex(377, 647);
  vertex(373, 636);
  vertex(371, 631);
  vertex(368, 617);
  vertex(368, 610);
  vertex(368, 603);
  vertex(373, 592);
  vertex(370, 588);
  vertex(353, 579);
  vertex(343, 578);
  endShape(CLOSE);

  //JerseyPurpleStripe
  fill(82, 58, 140);
  beginShape();
  vertex(319, 332);
  vertex(327, 324);
  vertex(344, 317);
  vertex(359, 317);
  vertex(383, 318);
  vertex(402, 327);
  vertex(402, 342);
  vertex(393, 336);
  vertex(380, 333);
  vertex(364, 329);
  vertex(345, 327);
  vertex(324, 334);
  endShape(CLOSE);

  //Right shoulder
  beginShape();
  vertex(291, 277);
  vertex(296, 284);
  vertex(302, 285);
  vertex(306, 288);
  vertex(311, 288);
  vertex(316, 288);
  vertex(326, 283);
  vertex(328, 272);
  vertex(328, 263);
  vertex(328, 240);
  vertex(326, 230);
  vertex(322, 224);
  vertex(318, 222);
  vertex(312, 221);
  vertex(303, 220);
  vertex(295, 220);
  vertex(284, 221);
  vertex(278, 224);
  vertex(271, 235);
  vertex(270, 248);
  vertex(272, 259);
  vertex(278, 268);
  vertex(283, 273);
  endShape(CLOSE);

  //Jersey
  fill(255, 193, 36);
  beginShape();
  vertex(317, 334);
  vertex(315, 326);
  vertex(315, 310);
  vertex(315, 297);
  vertex(306, 290);
  vertex(296, 285);
  vertex(281, 223);
  vertex(304, 220);
  vertex(315, 220);
  vertex(326, 224);
  vertex(342, 231);
  vertex(354, 233);
  vertex(370, 227);
  vertex(389, 238);
  vertex(399, 254);
  vertex(401, 267);
  vertex(399, 288);
  vertex(401, 309);
  vertex(403, 329);
  vertex(390, 322);
  vertex(376, 320);
  vertex(360, 318);
  vertex(345, 318);
  vertex(330, 321);
  vertex(324, 328);
  endShape(CLOSE);
 
  pushStyle();
fill(82, 58, 140);
textAlign(CENTER, CENTER);
textSize(29);
text("LeBron", 355, 270);
textSize(28);
text("23", 360, 305);  
  popStyle();
}

//void keyPressed() {
//  println("endShape(CLOSE);");
//}
// Function I used to draw
//void mousePressed() {

//  float localX = mouseX - playerX;
//  float localY = mouseY - playerY;

//  println("vertex(" + int(localX) + ", " + int(localY) + ");");

//  fill(255);
//  circle(mouseX, mouseY, 4);
//}
//void mousePressed() {
//  println("vertex(" + mouseX + ", " + mouseY + ");");
//  fill(255);
//  circle(mouseX, mouseY, 4);
//}

void mousePressed() {
  confettiOn = !confettiOn;
}
// Draw/rotate right arm while dunking
void drawRightarm(float shoulderAngle, float elbowAngle) {


  float shoulderX = 290, shoulderY = 252;
  float elbowX = 212, elbowY = 265;

  pushMatrix();
  translate(shoulderX, shoulderY);
  rotate(shoulderAngle);
  translate(-shoulderX, -shoulderY);

  //Right shoulder
  fill(130, 92, 38);
  beginShape();
  vertex(291, 279);
  vertex(277, 277);
  vertex(264, 283);
  vertex(248, 280);
  vertex(240, 279);
  vertex(230, 276);
  vertex(224, 277);
  vertex(217, 279);
  vertex(211, 275);
  vertex(207, 271);
  vertex(205, 268);
  vertex(205, 260);
  vertex(204, 253);
  vertex(203, 248);
  vertex(206, 245);
  vertex(208, 244);
  vertex(211, 241);
  vertex(214, 240);
  vertex(221, 237);
  vertex(230, 233);
  vertex(237, 233);
  vertex(250, 234);
  vertex(257, 236);
  vertex(262, 233);
  vertex(269, 229);
  vertex(275, 225);
  vertex(280, 223);
  vertex(287, 225);
  vertex(293, 228);
  vertex(303, 235);
  vertex(309, 243);
  vertex(312, 253);
  vertex(310, 268);
  vertex(310, 268);
  vertex(295, 276);
  endShape(CLOSE);




  pushMatrix();
  translate(elbowX, elbowY);
  rotate(elbowAngle);
  translate(-elbowX, -elbowY);

  //right forearm
  fill(130, 92, 38);
  beginShape();
  vertex(139, 269);
  vertex(145, 270);
  vertex(152, 273);
  vertex(164, 273);
  vertex(178, 275);
  vertex(188, 278);
  vertex(197, 278);
  vertex(203, 280);
  vertex(207, 282);
  vertex(211, 281);
  vertex(216, 279);
  vertex(219, 274);
  vertex(219, 268);
  vertex(219, 257);
  vertex(213, 252);
  vertex(200, 250);
  vertex(194, 247);
  vertex(182, 246);
  vertex(166, 246);
  vertex(154, 249);
  vertex(140, 248);
  vertex(132, 253);
  vertex(132, 258);
  vertex(136, 266);
  endShape(CLOSE);

if (!ballDrop) {
  //basketball
  fill(247, 148, 42);
  circle(137, 215, 72);
}
 

  //rightHand
  fill(130, 92, 38);
  beginShape();
  vertex(139, 268);
  vertex(127, 270);
  vertex(120, 268);
  vertex(115, 261);
  vertex(108, 252);
  vertex(101, 245);
  vertex(98, 235);
  vertex(100, 219);
  vertex(101, 210);
  vertex(104, 208);
  vertex(110, 210);
  vertex(106, 217);
  vertex(107, 230);
  vertex(112, 233);
  vertex(111, 227);
  vertex(115, 221);
  vertex(119, 223);
  vertex(116, 227);
  vertex(116, 235);
  vertex(117, 236);
  vertex(125, 230);
  vertex(130, 233);
  vertex(125, 240);
  vertex(124, 248);
  vertex(133, 250);
  vertex(141, 248);
  endShape(CLOSE);

  popMatrix();

  popMatrix();
}


void drawHoop(float x, float y) {
  pushStyle();
  pushMatrix();
  translate(x, y);
  fill(255);
  rectMode(CENTER);
  noFill();
  strokeWeight(4);
  stroke(255);
  rect(0, 0, 300, 150);
  rect(0, 37, 150, 75);
  stroke(255);
  strokeWeight(3);
  //line(-30, 50, 30, -50);
  for (int i = -5; i < 6; i++) {
    line(i * 12, 70, (6 * i), 120);
  }

  popMatrix();
  popStyle();
}

void drawNet(float x, float y) {
  pushStyle();
  pushMatrix();
  stroke(255);
  strokeWeight(3);
  translate(x, y);
  for (int i = -4; i < 5; i++) {
    line(i * 15, 70, (7.5 * i), 120);
  }
  line(-30, 120, 30, 120);
 
  stroke(248, 129, 88);
  strokeWeight(9);
  line(-60, 70, 60, 70);
  popStyle();
  popMatrix();
}


void drawBackground() {
  pushStyle();
  noStroke();
  fill(223,187,133);
  rectMode(CORNER);
  rect(0, 770, width, height);
  popStyle();
  //lights for some reason
  for (int i = 0; i < width; i += 80) {
    circle(i, 730, 10);  
  }
}
