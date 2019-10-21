class Ellipse extends Particle {
  Ellipse(float xPos, float yPos, int size, float noiseStrength, float ySpeedStrength, float alpha) {
   super(xPos, yPos, size, noiseStrength, ySpeedStrength, alpha);
  }
  void drawParticle() {
    fill(255, alpha);
    noStroke();
    ellipse(xPos, yPos, size, size);
  }
}
