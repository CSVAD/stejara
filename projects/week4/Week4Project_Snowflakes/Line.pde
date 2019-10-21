class Line extends Particle {
  Line(float xPos, float yPos, int size, float noiseStrength, float ySpeedStrength, float alpha) {
   super(xPos, yPos, size, noiseStrength, ySpeedStrength, alpha);
  }
  
  void drawParticle() {
    stroke(255);
    line(xPos, yPos, xPos, yPos + size);
  }
  
}
