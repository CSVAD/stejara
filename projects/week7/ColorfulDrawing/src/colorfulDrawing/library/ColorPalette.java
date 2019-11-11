package colorfulDrawing.library;

import java.util.ArrayList;

import controlP5.*;
import processing.core.*;

/**
 * This is a ColorPicker class that creates a color picking GUI. The user can pick 
 * the number of palette tiles they would like to see on screen with a slider. 
 * The user can also pick from a number of options to generate color palettes: 
 * "Random" assigns random colors to the tiles. 
 * "Red", "Blue", and "Green" options allow for tile colors to be generated on 
 * that specific color scheme. 
 * "Selected" allows the user to pick a tile that they like for the UI 
 * to generate a color palette based on the selected tile's color.
 
 *
 * @example ColorPicker 
 */

public class ColorPalette {
	public PApplet p;
	
	public final static String VERSION = "##library.prettyVersion##";
	

	/**
	 * a Constructor, usually called in the setup() method in your sketch to
	 * initialize and start the Library.
	 * 
	 * @example Hello
	 * @param theParent
	 */
	
	public ControlP5 cp5;
	public MyListener myListener;
	
	public Controller numPalettes;
	public DropdownList colSwatch;

	int paletteNum;
	int colSwatchType = 0;

	float r, g, b, a;
	int col;
	int strokeNum = 5;

	int counter = 1;

	ArrayList<PaletteTile> paletteList;

	public ColorPalette(PApplet p, int paletteNum) {
		this.p = p;
		this.paletteNum = paletteNum;
		cp5 = new ControlP5(p);
	}

	public void setupPicker() {
		initCP5();
		initPalette();
	}

	public void drawPicker() {
		p.background(255);
		listen();
		for (int i = 0; i < paletteNum; i++) {
			paletteList.get(i).displayPalette();
		}
	}

	public void mousePressedPicker() {
		if (colSwatchType == 4) {
			counter++;
			if (counter % 2 == 0) {
				for (int i = 0; i < paletteNum; i++) {
					if (paletteList.get(i).isPressed()) {
						handleSelected(i);
					}
				}
			}
		}
	}
	
	private void initCP5() {
		myListener = new MyListener();
		numPalettes = cp5.addSlider("paletteNum").setPosition(625, 24).setRange(1, 24);
		cp5.getController("paletteNum").addListener(myListener);	

		colSwatch = cp5.addDropdownList("colSwatchType").setPosition(625, 50).addItem("random", 0).addItem("red", 1)
				.addItem("green", 2).addItem("blue", 3).addItem("selected", 4);
		cp5.getController("colSwatchType").addListener(myListener);
	}

	private void initPalette() {
		p.println("Color palette initialized!");
		paletteList = new ArrayList<PaletteTile>();
		int size = 100;
		int c = -1;
		for (int i = strokeNum; i < p.width - strokeNum; i += size) {
			for (int j = strokeNum; j < p.height - strokeNum; j += size) {
				c++;
				r = p.random(255);
				g = p.random(255);
				b = p.random(255);
				a = p.random(50, 255);
				PaletteTile pt = new PaletteTile(p, p.color(r, g, b, a), size, i, j);
				paletteList.add(pt);
			}
		}
	}
	
	public void listen() {
		//p.println("listening");
		if (colSwatchType != (int)cp5.getController("colSwatchType").getValue()) {
			colSwatchType = (int)cp5.getController("colSwatchType").getValue();
			if (colSwatchType != 4) {
				for (int i = 0; i < paletteNum; i++) {
					handleColorPalette(i);
				}
			}
		}
		paletteNum = (int)cp5.getController("paletteNum").getValue();
		
	}

	private void handleColorPalette(int i) {
		switch (colSwatchType) {
		case 0:
			r = p.random(255);
			g = p.random(255);
			b = p.random(255);
			break;
		case 1:
			r = p.random(100, 255);
			g = p.random(50, 150);
			b = p.random(50, 100);
			break;
		case 2:
			r = p.random(50, 150);
			g = p.random(100, 255);
			b = p.random(50, 150);
			break;
		case 3:
			r = p.random(50, 150);
			g = p.random(50, 150);
			b = p.random(100, 255);
			break;
		}
		a = p.random(50, 255);
		col = p.color(r, g, b, a);
		paletteList.get(i).c = col;
	}

	private void handleSelected(int i) {
		p.println("handle selected!");
		col = paletteList.get(i).c;
		// println(red(col) + " " + blue(col) + " " + green(col));
		for (int j = 0; j < paletteNum; j++) {
			r = p.random((p.red(col) - 50), (p.red(col) + 50));
			g = p.random((p.green(col) - 50), (p.green(col) + 50));
			b = p.random((p.blue(col) - 50), (p.blue(col) + 50));
			a = p.random(50, 255);
			// println(r, g, b, a);
			paletteList.get(j).c = p.color(r, g, b, a);
		}
		counter++;
	}
}

