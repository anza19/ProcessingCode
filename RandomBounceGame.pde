float ballX;
float ballY;
float xSpeed = 5;
float ySpeed = 5;

public void setup(){
  size(1000,700);
  ballX = 100;
  ballY = 100;
}

public void draw(){
  background(127);
  stroke(127);
  fill(255);
  ellipse(ballX, ballY, 15, 15);
  ballMovement();
  motionAtEdges();
}

public void ballMovement(){
  if(keyCode == RIGHT){
    ballX += xSpeed;
  }
  else if(keyCode == LEFT){
    ballX -= xSpeed;
  }
  else if(keyCode == UP){
    ballY -= ySpeed;
  }
  else if(keyCode == DOWN){
    ballY += ySpeed;
  }
}

public void motionAtEdges(){
  if(ballX == width || ballX == 0){
     xSpeed *= -1;
  }
  else if(ballY == height || ballY == 0){
    ySpeed *= -1;
  }
   
}