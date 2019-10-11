/* Stejara Dinulescu
 * Week 3 Assignments: Parameterized Systems

 * sliders: number of vertices, number of "strips", shape height, shape width, shape depth, and shape color
 * fixed values: shape color transparency, ranges of all of the sliders
 * includes rotation functionality by dragging the mouse and picture saving with the spacebar
 * includes reset functionality by pressing any other key
*/

import controlP5.*;
ControlP5 c;

Controller vertSlider;
Controller stripSlider;
Controller heightSlider;
Controller widthSlider;
Controller depthSlider;
Controller redSlider;
Controller greenSlider;
Controller blueSlider;

int numVertices = 50;
float numStrips = 10;
float shapeHeight = 5;
int shapeWidth = 100;
int shapeDepth = 0;

float redVal = 0;
float greenVal = 0;
float blueVal = 0;

float rotx = 0;
float roty = 0;
float rotz = 0;

void setup() {
  size(800, 800, P3D);
  
  c = new ControlP5(this);
  
  vertSlider = c.addSlider("numVertices")
  .setPosition(25, 25)
  .setRange(10, 500);
  
  stripSlider = c.addSlider("numStrips")
  .setPosition(25, 50)
  .setRange(2, 50);
  
  widthSlider = c.addSlider("shapeWidth")
  .setPosition(25, 75)
  .setRange(0, 500);
  
  heightSlider = c.addSlider("shapeHeight")
  .setPosition(25, 100)
  .setRange(0, 10);
  
  depthSlider = c.addSlider("shapeDepth")
  .setPosition(25, 125)
  .setRange(-500, 500);
  
  redSlider = c.addSlider("redVal")
  .setPosition(25, 150)
  .setRange(0, 255);
  
  blueSlider = c.addSlider("greenVal")
  .setPosition(25, 175)
  .setRange(0, 255);
  
  greenSlider = c.addSlider("blueVal")
  .setPosition(25, 200)
  .setRange(0, 255);
}


void draw() {
  background(0);
  lights();
  
  pushMatrix();
  fill(redVal, greenVal, blueVal, 50);
  stroke(255);
  translate(width/2, height/2, -100);
  rotateX(rotx);
  rotateY(roty);
  
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < numVertices; i++) {
    float theta = map(i,0,numStrips,0,8*PI); //taken from example 1 of week 3
    float x = -sin(theta)*shapeWidth; //taken from example 1 of week 3
    float y = shapeHeight * i;
    float z = cos(theta)*shapeDepth; //taken from example 1 of week 3
    if (i % 2 == 0) {
      y = -y;
    } 
    vertex(x, y, z);
  }
  endShape(CLOSE);
  
  popMatrix();
}

void keyPressed() {
  //reset vals
  if (key == ' ') {
    saveFrame("line-######.png");
  } else {
    numVertices = 50;
    numStrips = 10;
    shapeHeight = 5;
    shapeWidth = 100;
    shapeDepth = 0;
    redVal = 0;
    greenVal = 0;
    blueVal = 0;
  }
}

//rotation functionality taken from https://forum.processing.org/two/discussion/12955/interactive-rotating-cube-3d-graph-paper-with-rules
void mouseDragged() {
  if (mouseX > 250 && mouseX < 650 && mouseY > 250 && mouseY < 550) {
    float rate = 0.01;
    rotx += (pmouseY-mouseY) * rate;
    roty += (mouseX-pmouseX) * rate;
  }
}
