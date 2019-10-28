/* Stejara Dinulescu
 * This project uses Drawing Manager library to create a drawing tool utlizing random() and noise(). 
 * In this way, the human and the computer draw together, making decisions in tandem to produce unique output.
 */

import drawing.library.*;
import processing.pdf.*;
import controlP5.*;

DrawingManager drawingManager;
DShape shape;

ControlP5 cp5;

float xRange = 20;
float yRange = -20;
float mouseRange = random(-5, 5);
int r = 0;
int g = 0;
int b = 0;
int backgroundR = 255;
int backgroundG = 200;
int backgroundB = 255;

int counter = 0;
int negCounter = 1;

Controller xParam;
Controller yParam;
Controller mouseRangeParam;
Controller modeParam;
Controller rSlider;
Controller gSlider;
Controller bSlider;
Controller brSlider;
Controller bgSlider;
Controller bbSlider;

int mode = 1;
int s = int(random(60, 240));

void setup() {
  size(1056, 816, P3D);
  background(backgroundR, backgroundG, backgroundB);
  smooth();
  drawingManager = new DrawingManager(this);
  cp5 = new ControlP5(this);

  xParam = cp5.addSlider("xRange")
    .setPosition(50, 50)
    .setRange(-100, 100)
    ;

  yParam = cp5.addSlider("yRange") 
    .setPosition(50, 75)
    .setRange(-100, 100)
    ;
    
  modeParam = cp5.addSlider("mode") //choose your line texture
    .setPosition(50, 100)
    .setRange(1, 2)
    ;
    
  mouseRangeParam = cp5.addSlider("mouseRange") 
    .setPosition(50, 125)
    .setRange(-10, 10)
    ;
    
  rSlider = cp5.addSlider("r")
    .setPosition(50, 150)
    .setRange(0, 255)
    ;

  gSlider = cp5.addSlider("g") 
    .setPosition(50, 175)
    .setRange(0, 255)
    ;

  bSlider = cp5.addSlider("b")
    .setPosition(50, 200)
    .setRange(0, 255)
    ;

  brSlider = cp5.addSlider("backgroundR") 
    .setPosition(50, 225)
    .setRange(0, 255)
    ;

  brSlider = cp5.addSlider("backgroundG") 
    .setPosition(50, 250)
    .setRange(0, 255)
    ;

  brSlider = cp5.addSlider("backgroundB") 
    .setPosition(50, 275)
    .setRange(0, 255)
    ;
}

void draw() {
  if (frameCount % s == 0) {
    mode = -1 * mode;
    s = (int)random(60, 240);
    mouseRange = random(-5, 5);
  }
}

void keyPressed() {
  if (key == ' ') {
    drawingManager.savePDF();
  }
  if (key == 'c') {
    drawingManager.clear();
    background(backgroundR, backgroundG, backgroundB);
  }
}

void mousePressed() {
  shape = drawingManager.addShape();
}

void mouseDragged() {
  //set drawing bounds so that when you are changing parameters, you are not "accidentally" drawing
  if (mouseX > 250) {
    drawShape();
  }
  if (mouseY > 300) {
    drawShape();
  }
}

void drawShape() {
  drawingManager.stroke(r, g, b);
  shape.addVertex(mouseX, mouseY);
  switch(mode) {
  case -1: 
    shape.addVertex(mouseX * mouseRange - noise(pmouseX, mouseX) / xRange, mouseY / mouseRange - noise(pmouseY, mouseY) / yRange);
    println("-1");
    break;
  case 1: 
    shape.addVertex(mouseX * mouseRange + (noise(pmouseX, mouseX) * xRange), mouseY / mouseRange + noise(pmouseY, mouseY) * yRange);
    println("1");
    break;
  case -2:
      shape.addVertex(mouseX - noise(pmouseX, mouseX) / xRange, mouseY - noise(pmouseY, mouseY) / yRange);
      println("-2");
    break;
  case 2:
      shape.addVertex(mouseX + noise(pmouseX, mouseX) * xRange, mouseY + noise(pmouseY, mouseY) * yRange);
      println("2");
    break;
  }
}
