class Bubble{
  float x;
  float y;
  float diameter;
  boolean active = false;
  float ySpeed;
  
  Bubble(float diameter){
    this.x = random(width);
    this.y = height;
    this.diameter = diameter;
    ySpeed = random(0.1,2);
  }
  
  void ascend(){
    this.y -=ySpeed;
    x += random(-2,2);
  }
  
   void display(){
     stroke(255);
     fill(127);
     ellipse(this.x,this.y,diameter,diameter);
   }
   
   void top(){
     if(this.y < -diameter/2){
       this.y+=height+diameter/2;
     }
   }
}