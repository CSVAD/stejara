/* Stejara Dinulescu
 * Project
 * This sketch will create several realistic-looking snowflakes that "fall" using perlin noise.
 * Parameters that will be exposed will be: number of snowflakes, wind "power", maybe snowflake design?
 */

import controlP5.*;

// global vars
int counter = 0;
int initNumSnowflakes = 1;
int numSnowflakes = 100;
ArrayList<Snowflake> snowflakes = new ArrayList();

float bR = 98;
float bG = 140;
float bB = 193;
float bSpeed = 0.1;

float xPosition;
float yPosition;
int size;
float ySpeed;
float alpha;

//user param vars
int sizeParamX = 1;
int sizeParamY = 30;

float noiseStrength = 0.5;
float ySpeedStrength = 1;

int windCounter;

// control P5 vars
ControlP5 c;

Controller noiseStrengthController;
Controller numParticlesController;
Controller ySpeedController;
Range sizeRange;

void setup() {
  size(800, 800);
  background(bR, bB, bG);
  noStroke();
  c = new ControlP5(this);
  initControllers();
  initSnowflakes(initNumSnowflakes);
  
  windCounter = (int)random(60, 240);
  println(windCounter);
}


void draw() {
  counter++;
  
  if (numSnowflakes > initNumSnowflakes) {
    initSnowflakes(numSnowflakes - initNumSnowflakes);
    initNumSnowflakes = numSnowflakes;
  } 
  incrementBackground();
  snowflakeMotion();
}

//**************************************Controller functions**************************************
void initControllers() {
  noiseStrengthController = c.addSlider("noiseStrength")
                          .setPosition(50, 50)
                          .setRange(-5, 5)
                          ;
            
  numParticlesController = c.addSlider("numSnowflakes")
                .setPosition(50, 75)
                .setRange(1, 100)
                ;
                
  ySpeedController = c.addSlider("ySpeedStrength")
            .setPosition(50, 100)
            .setRange(0, 15)
            ;
                
  sizeRange = c.addRange("sizeController") 
                .setBroadcast(false)
                .setPosition(50,150)
                .setSize(200,10)
                .setHandleSize(20)
                .setRange(1,30)
                .setRangeValues(1, 30)
                // after the initialization we turn broadcast back on again
                .setBroadcast(true)
                .setColorForeground(color(255,40))
                .setColorBackground(color(255,40))  
                ;
}

void controlEvent(ControlEvent theControlEvent) {
  if(theControlEvent.isFrom("sizeController")) {
    // min and max values are stored in an array.
    // access this array with controller().arrayValue().
    // min is at index 0, max is at index 1.
    sizeParamX = int(theControlEvent.getController().getArrayValue(0));
    sizeParamY = int(theControlEvent.getController().getArrayValue(1));
    
    reInitSizeSnowflakes();
    //println("range size update, done.");
  }
}

// **************************************Snowflake functions**************************************
void initSnowflakes(int num) {
  for (int i = 0; i < num; i++) {
    Snowflake s = new Snowflake();
    xPosition = random(0, width);
    yPosition = random(0, height);
    size = (int)random(sizeParamX, sizeParamY);
    ySpeed = random(0.1, 1.5);
    alpha = random(20, 255);
    s.initSnowflake(xPosition, yPosition, size, noiseStrength, ySpeedStrength, alpha);
    snowflakes.add(s);
  }
}
void reInitSizeSnowflakes() {
  for (int i = 0; i < numSnowflakes; i++) {
    size = (int)random(sizeParamX, sizeParamY);
    //snowflakes.get(i).p.resize(size, size);
    snowflakes.get(i).setSize(size);
  }
}

void snowflakeMotion () {
  for (int i = 0; i < numSnowflakes; i++) {
    if (counter % windCounter == 0) {
      noiseStrength = -1 * noiseStrength;
      windCounter = (int)random(120, 720);
      println(windCounter);
    }
    snowflakes.get(i).setNoiseStrength(noiseStrength);
    snowflakes.get(i).setYSpeedStrength(ySpeedStrength);
    snowflakes.get(i).updateSnowflake();
    snowflakes.get(i).drawSnowflake();
    snowflakes.get(i).resetSnowflake();
  }
}

//**************************************Background functions**************************************
void incrementBackground() {
  background(bR, bG, bB);
  if (bR <= 0 || bG <= 0 || bB <= 0 || bR >= 250 || bG >= 250 || bB >= 250) {
    bSpeed = -bSpeed;
  }
  bR = bR + bSpeed;
  bG = bG + bSpeed;
  bB = bB + bSpeed;
}
