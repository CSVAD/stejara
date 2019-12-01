//Gaussian noise

import processing.pdf.*;
int l = 360;

void setup() {
  size(800, 800);
  stroke(0);
  strokeWeight(0.5);
  background(255);
  
  beginRecord(PDF, "filename.pdf"); 

  translate(width/2, height/2);
  for (int i = 0; i < l; i++) {
    translate(noise(random(50, 100)), noise(random(50, 100)));
    rotate(noise(50));
    float dist = abs(int(randomGaussian() * 15));
    line(width/2, height/2, dist, dist);
  }
  
  endRecord();
  saveFrame("gaussian-######.png");
}
