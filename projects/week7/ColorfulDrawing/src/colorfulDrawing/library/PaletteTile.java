package colorfulDrawing.library;

import processing.core.*;

/**
 * This class describes one tile object in the color palette.
 * Created by Stejara Dinulescu
 * @example PaletteTile
 */   
  
public class PaletteTile {
	private PApplet p;
	  
	protected int c = 0;
	protected float xPos = 0;
	protected float yPos = 0;
	protected float size = 0;
	
	protected boolean pressed = false;
	
	protected int strokeNum = 5;
	
	protected PaletteTile(PApplet p, int c, float size, float xPos, float yPos) {
		p.strokeWeight(5);
		this.p = p;
		this.c = c;
		this.size = size;
		this.xPos = xPos;
		this.yPos = yPos;
	} 

	protected void displayPalette() { 
		p.pushMatrix();
		p.fill(c);
		if (pressed == true) { 
			p.stroke(0);  
		} else {
			p.stroke(255); 
		}
		p.rect(xPos, yPos, size, size); 
		p.popMatrix();
	}
 
	protected boolean isPressed() {
		if (p.mouseX > xPos && p.mouseX < xPos + size && p.mouseY > yPos && p.mouseY < yPos + size) {
			pressed = true;
		} else {
			p.noStroke();
			pressed = false;
		}
		return pressed;
	}

}                    