Car car;

public void setup() {
  size(1000, 700);
  car = new Car();
}

public void draw() {
  background(127);
  car.display();
  car.move();
}