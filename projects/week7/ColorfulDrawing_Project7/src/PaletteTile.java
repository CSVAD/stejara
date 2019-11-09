//import processing.core.*;
//
//public class PaletteTile {
//	PApplet p;
//	int c;
//	float xPos;
//	float yPos;
//	float size;
//	boolean pressed;
//	int pressedNum = 1;
//	int strokeNum = 5;
//
//	PaletteTile(PApplet p) {
//		this.p = p;
//	}
//
//	PaletteTile(PApplet p, int c, float size, float xPos, float yPos) {
//		this.p = p;
//		this.c = c;
//		this.size = size;
//		this.xPos = xPos;
//		this.yPos = yPos;
//	}
//
//	void displayPalette() {
//		p.fill(c);
//		p.noStroke();
//		// if (pressed && pressedNum % 2 == 1) { stroke(0); strokeWeight(strokeNum); }
//		// else { noStroke();}
//		p.rect(xPos, yPos, size - strokeNum, size - strokeNum);
//	}
//
//	boolean isPressed(boolean selected) {
//		if (selected) {
//			if (p.mouseX > xPos && p.mouseX < xPos + size && p.mouseY > yPos && p.mouseY < yPos + size) {
//				pressed = true;
//			} else {
//				pressed = false;
//			}
//
//			pressedNum++;
//		}
//		return pressed;
//	}
//
//}