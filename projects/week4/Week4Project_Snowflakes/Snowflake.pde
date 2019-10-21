class Snowflake extends Particle {
  PImage p;
  
  //Snowflake image taken from: 
  //https://www.pinclipart.com/pindetail/wwhoom_snowflake-12-svg-cut-file-snap-click-supply/
  
  Snowflake(float xPos, float yPos, int size, float noiseStrength, float ySpeedStrength, float alpha) {
    super(xPos, yPos, size, noiseStrength, ySpeedStrength, alpha);
    p = loadImage("test1.png");
    p.resize(size, size);
  }
  
  void setSize(int size) {
    this.size = size;
    p = loadImage("test1.png");
    p.resize(size, size);
  }
  
  void drawParticle() {
    noFill();
    noStroke();
    image(p, xPos, yPos);
    p.resize(size, size);
  }
}
