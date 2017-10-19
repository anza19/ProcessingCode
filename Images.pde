PImage hog;
public void setup(){
  //loading image
  size(700,700);
  hog = loadImage("hog.jpg");
}

public void draw(){
  background(0);
  tint(random(0,255),random(0,255),random(0,255));
  image(hog,0,0,mouseX, mouseY);
}