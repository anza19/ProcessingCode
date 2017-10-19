Particle p1;
Particle p2;

public void setup(){
  size(1000, 500);
  p1 = new Particle(100,100,50);
  p2 = new Particle(500,300,100);
}

public void draw(){
  background(0);
  
  boolean result = p1.overlap(p2);
  System.out.println(result);
  p2.x = mouseX;
  p2.y = mouseY;
  p1.display();
  p2.display();
}