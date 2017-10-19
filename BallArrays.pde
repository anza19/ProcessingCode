Bubble[] bubbles = new Bubble[1000];

int total = 0;

public void setup(){
  size(1000,500);
  for(int i=0;i<bubbles.length;i++){
    bubbles[i] = new Bubble(random(20,40));
  }
}

public void mousePressed(){
  total+=1;
}

public void draw(){
  background(255);
  for(int i=0;i<total;i++){
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();

  }
}