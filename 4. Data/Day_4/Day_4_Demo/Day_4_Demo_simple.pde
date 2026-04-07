ArrayList<Float> xPos = new ArrayList<Float>();
ArrayList<Float> yPos = new ArrayList<Float>();
ArrayList<Float> xSpeed = new ArrayList<Float>();
ArrayList<Float> ySpeed = new ArrayList<Float>();


void setup(){
  size(400,400);
}

void draw(){
  background(0);
  for (int i=0; i<xPos.size(); i++){
    xPos.set(i, xPos.get(i) + xSpeed.get(i));
    yPos.set(i, yPos.get(i) + ySpeed.get(i));
    circle(xPos.get(i), yPos.get(i), 20);
  }
  xPos.add((float)mouseX);
  yPos.add((float)mouseY);
  xSpeed.add(random(-5,5));
  ySpeed.add(random(-5,5));
  
}