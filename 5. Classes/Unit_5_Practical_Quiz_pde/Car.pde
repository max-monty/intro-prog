class Car {
  float x, y;
  float w = 50;
  float h = 30;
  float speed;
  
  Car(float startX, float startY, float startSpeed) {
    x = startX;
    y = startY;
    speed = startSpeed;
  }
  
  void move() {
    x += speed;
    if (x > width)  x = -w;
    if (x < -w)     x = width;
  }
  
  void display() {
    rect(x, y, w, h);
  }
}
