class Particle{
  float x, y, r;
  
  Particle(){
    this.x = random(0,width);
    this.y = random(0,height);
    this.r = random(0,50);
  }
  Particle(float x, float y, float r){
    this.x = x;
    this.y = y;
    this.r = r;
  }
  
  void display(){
    stroke(255);
    strokeWeight(10);
    noFill();
    ellipse(this.x,this.y,r*2,r*2);
  }
  
  boolean overlap(Particle particle){
  float d = dist(x,y,particle.x,particle.y);
  if(d < (r+ particle.r)){
    background(50);
    return false;
  }
  return true;
}
}