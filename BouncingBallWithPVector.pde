Mover m;

public void setup(){
  background(127);
  smooth();
  size(1900,1000);
  m = new Mover();
}

public void draw(){
  m.display();
  m.simpleMotion();
  m.motionEdge();
}