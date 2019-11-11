package colorfulDrawing.library;

import processing.core.*;

/**
 * This class describes one tile object in the color palette.
 * @example PaletteTile
 */
 
public class PaletteTile {
	private PApplet p;
	
	protected int c = 0;
	protected float xPos = 0;
	protected float yPos = 0;
	protected float size = 0;
	
	protected int strokeNum = 5;
	
	protected PaletteTile(PApplet p, int c, float size, float xPos, float yPos) {
		this.p = p;
		this.c = c;
		this.size = size;
		this.xPos = xPos;
		this.yPos = yPos;
	}

	protected void displayPalette() {
		p.fill(c);
		p.noStroke();
		p.rect(xPos, yPos, size - strokeNum, size - strokeNum);
	}

	protected boolean isPressed() {
		if (p.mouseX > xPos && p.mouseX < xPos + size && p.mouseY > yPos && p.mouseY < yPos + size) {
			return true;
		} else {
			return false;
		}
	}

}