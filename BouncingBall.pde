//this is a simple sketch that moves a ball!

//x and y positions
float circleX;
float circleY;
//speed variables, which basically increment x and y by certain length
float xSpeed = 3.0;
float ySpeed = 3.0;

public void setup(){
  size(1000, 400);
  circleX = 0;
  circleY = 0;
  
}

public void draw(){
 background(51);
 fill(102);
 stroke(255);
 ellipse(circleX, circleY, 32, 32);
 System.out.println("circleX: " + circleX + " circleY: " + circleY);
 System.out.println("circleX: " + circleX + " circleY: " + circleY);

}

public void keyPressed(){
   if(keyCode == RIGHT){
   circleX+=xSpeed;
 }
 else if(keyCode == LEFT){
   circleX -=xSpeed;
 }
 else if(keyCode == UP){
   circleY-=ySpeed;
 }
 else if(keyCode == DOWN){
   circleY+=ySpeed;
 }

}