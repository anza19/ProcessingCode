class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;

  Mover() {
    location = new PVector(width*0.5, height*0.5);
    velocity = new PVector(0, 0); //object is at rest, it will speed up due to acceleration
    acceleration = new PVector(-0.001, 0.01);
  }

  public void simpleMotion() {
    velocity.add(acceleration);
    velocity.limit(10);
    location.add(velocity);
  }

  public void motionEdge() {
    if (location.x >= width || location.x <=0) {
      velocity.x *= -1;
    }
    if (location.y >= height || location.y <=0) {
      velocity.y *= -1;
    }
  }

  public void display() {
    stroke(0);
    fill(255);
    ellipse(location.x, location.y, 20, 20);
  }
}