import drawing.library.*;
import processing.pdf.*;
import controlP5.*;

DrawingManager drawingManager;
DShape shape;

ControlP5 cp5;

float xRange;
float yRange;
int r;
int g;
int b;
int backgroundR = 255;
int backgroundG = 50;
int backgroundB = 255;

Controller xParam;
Controller yParam;
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
    .setRange(20, 100)
    ;

  yParam = cp5.addSlider("yRange") 
    .setPosition(50, 75)
    .setRange(20, 100)
    ;
  rSlider = cp5.addSlider("r")
    .setPosition(50, 100)
    .setRange(0, 255)
    ;

  gSlider = cp5.addSlider("g") 
    .setPosition(50, 125)
    .setRange(0, 255)
    ;

  bSlider = cp5.addSlider("b")
    .setPosition(50, 150)
    .setRange(0, 255)
    ;

  brSlider = cp5.addSlider("backgroundR") 
    .setPosition(50, 175)
    .setRange(0, 255)
    ;

  brSlider = cp5.addSlider("backgroundG") 
    .setPosition(50, 200)
    .setRange(0, 255)
    ;

  brSlider = cp5.addSlider("backgroundB") 
    .setPosition(50, 225)
    .setRange(0, 255)
    ;
}

void draw() {
  println(s);
  //if (frameCount % s == 0) {
  //  mode = -1 * mode;
  //  s = (int)random(60, 240);
  //  println("switch");
  //}
}

void keyPressed() {
  if (key == 'b') {
    background(backgroundR, backgroundG, backgroundB);
  }
  if (key == ' ') {
    drawingManager.savePDF();
  }
  if (key == 'c') {
    drawingManager.clear();
  }
}

void mousePressed() {
  shape = drawingManager.addShape();
}

void mouseDragged() {
  drawingManager.stroke(r, g, b);
  shape.addVertex(mouseX, mouseY);
  switch(mode) {
  case -1: 
    shape.addVertex(mouseX / noise(pmouseX, mouseX), mouseY / noise(pmouseY, mouseY));
    break;
  case 1: 
    shape.addVertex(mouseX + (noise(pmouseX, mouseX) * xRange), mouseY + noise(pmouseY, mouseY) * yRange);
    break;
  }
}
