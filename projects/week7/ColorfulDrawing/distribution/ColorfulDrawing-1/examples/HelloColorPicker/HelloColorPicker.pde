import colorfulDrawing.library.*;
ColorPalette cp;

void setup() {
  size(1000,905);
  background(255);
  smooth();
  
  //init and setup palette
  cp = new ColorPalette(this, 24);
  cp.setupPalette();
}

void draw() {
  //this statement draws the color picking part of the palette
  cp.drawPalette();
  //this statement allows for drawing on the screen
  cp.paint();
}

void mousePressed() {
  //statement to allow for handling color selection
  cp.handleMouse();
}
