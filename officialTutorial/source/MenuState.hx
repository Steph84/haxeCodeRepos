package;

import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.FlxG;
import flixel.util.FlxAxes;
import flixel.addons.ui.FlxUI9SliceSprite;

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
		_btnPlay = new FlxButton(0, 0, "Play", clickPlay);
		_btnReset = new FlxButton(100, 100, "Reset", clickPlay);
		
		_btnPlay.screenCenter(FlxAxes.X);
		_btnReset.screenCenter(FlxAxes.Y);
		
		//_btnPlay.screenCenter();
		//_btnReset.screenCenter();
		
		_btnPlay.loadGraphic("", false, 32, 32);
		
		//FlxUI9SliceSprite
		
		add(_btnPlay);
		add(_btnReset);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
	private function clickPlay():Void
	{
		FlxG.switchState(new PlayState());
	}

	
}