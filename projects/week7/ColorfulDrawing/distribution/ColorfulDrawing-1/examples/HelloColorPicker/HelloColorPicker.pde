import colorfulDrawing.library.*;
ColorPalette cp;

void setup() {
  size(800,800);
  background(255);
  smooth();
  
  cp = new ColorPalette(this, 24);
  cp.setupPicker();
}

void draw() {
  cp.drawPicker();
  cp.paint();
}

void mousePressed() {
  cp.mousePressedPicker();
}
