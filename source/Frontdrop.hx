package;

import flixel.FlxG;
import flixel.FlxSprite;

class Frontdrop extends FlxSprite
{
	public function new(x:Int, y:Int)
	{
		super(x, y);
		makeGraphic(FlxG.camera.width, FlxG.camera.height, 0x443181D6);
		solid = false;  //Just to make sure no collisions with the frontdrop ever take place
		scrollFactor.set(0, 0);
	}
}