class Snowflake {
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
  
  PImage p;
  
  //Snowflake image taken from: 
  //https://www.pinclipart.com/pindetail/wwhoom_snowflake-12-svg-cut-file-snap-click-supply/
  
  void initSnowflake(float xPos, float yPos, int size, float noiseStrength, float ySpeedStrength, float alpha) {
    p = loadImage("test1.png");
    this.xPos = xPos;
    this.yPos = yPos;
    this.size = size;
    p.resize(size, size);
    this.noiseStrength = noiseStrength;
    xSpeed = noise(xPos) * noiseStrength;
    this.ySpeedStrength = ySpeedStrength;
    ySpeed = 1.5 * ySpeedStrength;
    this.alpha = alpha;
  }
  
  void updateSnowflake() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
  }
  
  void setNoiseStrength(float noiseStrength) {
    this.noiseStrength = noiseStrength;
    xSpeed = noise(xPos) * noiseStrength;
  }
  void setYSpeedStrength(float ySpeedStrength) {
    this.ySpeedStrength = ySpeedStrength;
    ySpeed = noise(ySpeed) * ySpeedStrength;
  }
  
  void setXPos(float xPos) {
    this.xPos = xPos;
  }
  
  void setXSpeed(float xSpeed) {
    this.xSpeed = xSpeed;
  }
  
  void setSize(int size) {
    this.size = size;
    p = loadImage("test1.png");
    p.resize(size, size);
  }
  
  void drawSnowflake() {
    image(p, xPos, yPos);
    //p.resize(size, size);
  }
  
  void resetSnowflake() {
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
