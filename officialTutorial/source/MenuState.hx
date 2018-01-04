package;

import flixel.FlxState;
import flixel.graphics.FlxGraphic;
import flixel.system.FlxAssets;
import flixel.ui.FlxButton;
import flixel.FlxG;
import flixel.util.FlxAxes;
//import flixel.addons.ui.FlxUI9SliceSprite;
import flixel.system.scaleModes.RelativeScaleMode;
//import openfl.Display.Window;

/**
 * ...
 * @author 
 */
class MenuState extends FlxState
{
	private var _btnPlay:FlxButton;
	private var _btnReset:FlxButton;

	override public function create():Void
	{
		new WindowResizeDimension();
		
		_btnPlay = new FlxButton(0, 0, "Play", clickPlay);
		_btnReset = new FlxButton(100, 100, "Reset", clickPlay);
		
		_btnPlay.screenCenter(FlxAxes.X);
		_btnPlay.screenCenter();
		_btnReset.screenCenter(FlxAxes.Y);
		
		//_btnPlay.screenCenter();
		//_btnReset.screenCenter();
		
		_btnPlay.loadGraphic("assets/images/sheet_button.png", true, 49, 49);
		
		//FlxUI9SliceSprite
		
		add(_btnPlay);
		add(_btnReset);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		if (FlxG.keys.justPressed.SPACE)
		{
			FlxG.scaleMode = new RelativeScaleMode(1.5, 1.5);
		}
		super.update(elapsed);
	}
	
	private function clickPlay():Void
	{
		FlxG.switchState(new PlayState());
	}

	
}