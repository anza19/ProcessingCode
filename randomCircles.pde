float circleSize;

public void setup() {
  background(127);
  size(1200, 800);
  circleSize = 5;
}

public void draw() {
  if (mousePressed) {
    stroke(0); //border colour
    fill(255);
    ellipse(mouseX, mouseY, circleSize, circleSize);
    randomCircleSize();
  }
}

public void randomCircleSize() {
  if (mouseButton == RIGHT) {
    circleSize +=5;
  } else if (mouseButton == LEFT) {
    circleSize -= 5;
  }
}