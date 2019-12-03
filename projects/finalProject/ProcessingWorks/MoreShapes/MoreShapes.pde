void setup() {
  size(800, 800);
  background(255);
  fill(0, 255, 0);
  rect(width/2 - 200, height/2 - 200, 480, 300);
  fill(255, 0, 0);
  rect(width/2 - 100, height/2 - 100, 250, 380);
  fill(255, 255, 0);
  ellipse(width/2 - 150, height/2 - 250, 400, 200);
  fill(0, 0, 255);
  ellipse(width/2 + 200, height/2 + 200, 250, 210);
  fill(0, 255, 255);
  triangle(200, 600, 420, 650, 120, 400);
  
  save("shapes2.png");
}
