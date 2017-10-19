class Car {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float maxSpeed = 10;

  Car() {
    //the initial location of car is at center
    position = new PVector(width/2, height/2);
    //initial velocity of car is 0
    velocity = new PVector(0, 0);
    //acceleration is going to be between -0.001 ms^-2 and 0.001ms^-2
    acceleration = new PVector(-0.001, 0.001);
  }

  void display() {
    stroke(0);
    fill(255);
    ellipse(position.x, position.y, 20, 20);
  }
  
  void update(){
    if(keyCode == UP){
      //if key is UP, accelerate
      velocity.add(acceleration);
      velocity.limit(maxSpeed);
      position.add(velocity);
    }
    else if(keyCode == DOWN){
      //if key is DOWN, brake
      velocity.sub(acceleration);
      position.add(velocity);
    }
  }
  
  void motionAtEdges(){
    if(position.x >= width || position.x <=0){
      velocity.x*=-1;
    }
    if(position.y >= height || position.y <=0){
      velocity.y*=-1;
    }
  }
}