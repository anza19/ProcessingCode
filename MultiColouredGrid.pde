size(400,300);
background(255);
strokeWeight(2);
stroke(255);
fill(random(0,255),random(0,255),random(0,255));

for(int i=0;i<width;i+=20){
    for(int j=0;j<height;j+=20)
    {
      fill(random(0,255),random(0,255),random(0,255));
      rect(i,j,20,20);
    }
  }