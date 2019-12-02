int numLine = 450;

void setup() {
  size(800, 800);
  background(255);
  
  stroke(0.5);
  for (int i = 0; i < numLine; i++) {
    stroke(random(0, 255));
    line(i*1.5 + 50, random(width/2 - 50, height/2 - 50), random(0, height), random(0, height));
  }
  
  save("lines.png");
}
