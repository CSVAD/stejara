void setup() {
  size(800, 800);
  background(0, 0, 255);
  fill(255);
  rect(width/2 - 200, height/2, 300, 300);
  fill(0, 255, 0);
  ellipse(width/2, height/2, 140, 140);
  fill(255, 0, 0);
  rect(width/2 - 300, height/2 - 200, 600, 100);
  fill(255, 255, 0);
  ellipse(500, 180, 400, 100);
  
  save("shapes.png");
}
