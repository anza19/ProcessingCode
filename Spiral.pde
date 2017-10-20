float r = 1;
float theta = 0;

public void setup() {
  size(1200, 700);
  background(255);
  smooth();
  noStroke();
  fill(0);
  ellipse(width/2,height/2,16,16);
}

public void draw() {
  float x = r*cos(theta);
  float y = r*sin(theta);
  //noStroke();
  //fill(0);
  ellipse((x+width/2), (y+height/2), 16, 16);
  theta += 0.01;
  r+=0.1;
}