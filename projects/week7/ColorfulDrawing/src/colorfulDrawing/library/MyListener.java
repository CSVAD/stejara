package colorfulDrawing.library;
import controlP5.*;

/**
 * This class is for ControlP5 GUIs.
 * Created by Jennifer Jacobs
 * @example MyListener
 */  
                  
public class MyListener implements ControlListener {
  public void controlEvent(ControlEvent theEvent) {
	  theEvent.getController().getValue();
  } 
}                                    