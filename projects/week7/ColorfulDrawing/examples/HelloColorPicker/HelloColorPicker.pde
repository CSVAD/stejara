import colorfulDrawing.library.*;
ColorPalette cp;

void setup() {
  size(800,800);
  smooth();
  
  cp = new ColorPalette(this, 24);
  cp.setupPicker();
}

void draw() {
  cp.drawPicker();
}

void mousePressed() {
  cp.mousePressedPicker();
}
