abstract class Particle {
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float ySpeedStrength;
  float noiseX;
  float noiseY;
  float noiseStrength;
  int size;
  float alpha;
  
  float uniqueMotionX = random(-0.5, 5.5);
  float uniqueMotionY = random(-0.5, 5.5);
  
  Particle(float xPos, float yPos, int size, float noiseStrength, float ySpeedStrength, float alpha) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.size = size;
    this.noiseStrength = noiseStrength;
    xSpeed = noise(xPos) * noiseStrength;
    this.ySpeedStrength = ySpeedStrength;
    ySpeed = 1.5 * ySpeedStrength;
    this.alpha = alpha;
    //fill(255, alpha);
  }
  
  void update() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
  }
  
  void setNoiseStrength(float noiseStrength) {
    this.noiseStrength = noiseStrength;
    xSpeed = noise(xPos) * noiseStrength * uniqueMotionX;
  }
  void setYSpeedStrength(float ySpeedStrength) {
    this.ySpeedStrength = ySpeedStrength;
    ySpeed = noise(ySpeed) * ySpeedStrength * uniqueMotionY;
  }
  
  void setXPos(float xPos) {
    this.xPos = xPos;
  }
  
  void setXSpeed(float xSpeed) {
    this.xSpeed = xSpeed;
  }
  
  void setSize(int size) {
    this.size = size;
  }
  
  void drawParticle() {}
  
  void reset() {
    if (yPos - size/2 >= height) {
      yPos = -10;
    }
    if (xPos + size/2 <= 0) {
      xPos = width;
    }
    if (xPos - size/2 >= width) {
      xPos = 0 - size/2;
    }
  }
}
