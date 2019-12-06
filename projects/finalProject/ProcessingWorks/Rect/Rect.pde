int numLine = 450;
import processing.pdf.*;

void setup() {
  size(1300, 800);
  background(255);
  noFill();
  
  beginRecord(PDF, "plotter4_line");
  
  stroke(0.5);
  for (int i = 0; i < numLine; i++) {
    stroke(random(0, 255));
    noFill();
    rect(i*2 + 25, height/2 - 200 - random(-50, 100), random(0, 400), random(0, 400));
  }
  
  endRecord();
  save("rect-1.png");
}
