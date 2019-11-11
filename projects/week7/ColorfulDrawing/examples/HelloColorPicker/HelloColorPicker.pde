import colorfulDrawing.library.*;
ColorPicker cp;

void setup() {
  size(800,800);
  smooth();
  
  cp = new ColorPicker(this, 24);
  cp.setupPicker();
}

void draw() {
  cp.drawPicker();
}

void mousePressed() {
  cp.mousePressedPicker();
}
