//based on probability, draw a circle

//setting probabilities for RED, GREEN, BLUE
float probRED = 0.6;
float probGREEN = 0.1;
float probBLUE = 0.3;

//setting our display
public void setup() {
  size(1000, 500);
  smooth();
  background(255);
}

public void draw() {
  //random seed, betweem 0 -> 100%
  float probRANDOM = random(0, 1);
  //checks various probability level and generates a circle
  //within the RGB spectrum
  if (probRANDOM > probBLUE && probRANDOM <= probRED) {
    //so here, if probability of r exceeds that of blue but AND is
    //less than or equal to red, generates a circle with a varying R value
    randomCircle(random(0, 255), 0, 0);
  } else if (probRANDOM >0 && probRANDOM <= probGREEN) {
    //similar concept for G and B circles
    randomCircle(0, random(0, 255), 0);
  } else if (probRANDOM > probGREEN && probRANDOM <= probBLUE) {
    randomCircle(0, 0, random(0, 255));
  }
}

//our method which makes the coloured circle
public void randomCircle(float R, float G, float B) {
  fill(R, G, B, random(0, 255));
  ellipse(random(width), random(height), 20, 20);
}