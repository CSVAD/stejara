import processing.core.PApplet;

public class ColorfulDrawingMain extends PApplet {
	
	//ColorPicker colorPicker;
	
	public static void main(String[] args) {
        PApplet.main("ColorfulDrawingMain");
        
    }

    public void settings(){
    	size(805, 805);
  	  	background(255);
    }

    public void setup(){
//    	colorPicker = new ColorPicker(this);
//    	colorPicker.setupPicker();
    }

    public void draw(){
    	//colorPicker.drawPicker();
    }

	public void mousePressed() {
		//colorPicker.mousePressedPicker();
	}
			
	

}
