class Car {
  color c;
  float xPos;
  float yPos;
  float xSpeed;

  Car() {
    this.c = color(255);
    this.xPos = width/2;
    this.yPos = height/2;
    this.xSpeed = 1;
  }

  public void display() {
    rectMode(CENTER);
    fill(c);
    rect(xPos, yPos, 20, 10);
  }

  public void move() {
    xPos += xSpeed;
    if (xPos > width || xPos < 0) {
      xSpeed *= -1;
    }
  }
}