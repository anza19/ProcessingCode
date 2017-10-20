float xTime = 0.0;
float yTime = 100.0;
float increment = 0.01;

public void setup() {
  size(1200, 700);
  smooth();
  background(255);
}

public void draw() {
  float x = noise(xTime)*width;
  float y = noise(yTime)*height;
  xTime+=increment;
  yTime+=increment;
  stroke(0);
  fill(0,0);
  ellipse(x,y,20,20);
}