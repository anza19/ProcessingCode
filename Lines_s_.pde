public void setup(){
  background(162);
  size(1000,700);
}

public void draw(){
  strokeWeight(10);
  fill(random(0,255),random(0,255),random(0,255));
  line(mouseX,mouseY,pmouseX,pmouseY);
}