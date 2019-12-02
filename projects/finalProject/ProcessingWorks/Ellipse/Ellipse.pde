int numLine = 450;

void setup() {
  size(1100, 800);
  background(255);
  noFill();
  
  stroke(0.5);
  for (int i = 0; i < numLine; i++) {
    stroke(random(0, 255), random(0, 255), random(0, 255));
    ellipse(i*1.5 + 200, height/2 - random(-50, 50), random(0, 400), random(0, 400));
  }
  
  save("ellipse-1.png");
}
