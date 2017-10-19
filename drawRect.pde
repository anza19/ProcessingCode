public void setup() {
  background(255);
  size(1200, 800);
}

public void draw() {
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX, mouseY, 50, 50);
}