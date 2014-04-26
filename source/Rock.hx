package;

import flixel.FlxSprite;
import flixel.util.FlxPoint;
import flixel.FlxG;
using flixel.util.FlxVector;

class Rock extends FlxSprite
{
	public function new(X:Float, Y:Float) 
	{
		super(X, Y);
		loadGraphic(Reg.ROCK_IMAGE, false, false, 32, 32, false);
	}

	override public function update():Void
	{	
		super.update();

		var tempPosVector = new FlxPoint(x, y);
		var tempLeaderVector = new FlxPoint(Reg.sharkLeader.x, Reg.sharkLeader.y);
		if (tempPosVector.distanceTo(tempLeaderVector) > FlxG.camera.width * 2) {
				kill();
		}
	}
}