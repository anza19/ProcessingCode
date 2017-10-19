Car c1;

public void setup() {
  smooth();
  size(1900, 1000);
  c1 = new Car();
}

public void draw() {
  c1.display();
  c1.update();
  c1.motionAtEdges();
}