package;
import openfl.display.Window;
import lime.app.Config;

/**
 * ...
 * @author stephane
 */
class WindowResizeDimension extends Window
{
	public function new() 
	{
		var myConfig:WindowConfig = null;
		myConfig = new WindowConfig(
		myConfig.width = 1300;
		myConfig.height = 760;
		//new Window(myConfig);
		
		super(myConfig);
	}
	
}