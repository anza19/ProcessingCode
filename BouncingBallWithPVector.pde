PVector location;
PVector velocity;

public void setup(){
  background(127);
  smooth();
  size(1900,1000);
  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
}

public void draw(){
  stroke(0);
  fill(255);
  ellipse(location.x,location.y,50,50);
  simpleMotion();
  motionEdge();
}

public void simpleMotion(){
  location.add(velocity);
}

public void motionEdge(){
  if(location.x >= width || location.x <=0){
    velocity.x *= -1;
  }
  if(location.y >= height || location.y <=0){
    velocity.y *= -1;
  }
}