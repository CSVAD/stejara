int numLine = 450;
import processing.pdf.*;

void setup() {
  size(800, 800);
  background(255);
  
  beginRecord(PDF, "plotter3_line");
  stroke(0.5);
  for (int i = 0; i < numLine; i++) {
    stroke(random(0, 255));
    line(i*1.5 + 50, random(width/2 - 50, height/2 - 50), random(0, height), random(0, height));
  }
  endRecord();
  save("lines.png");
}
