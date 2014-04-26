package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.util.FlxSpriteUtil;

class Wave extends FlxSprite
{
	public function new(X:Float = 0, Y:Float = 0)
	{
		super(X, Y);

		//loadGraphic(Reg.WAVE_BIG_SPRITESHEET, true, false, 48, 48, false);
		loadGraphic(Reg.WAVE_SPRITESHEET, true, false, 16, 16, false);
    	// Setup and start animation
    	animation.add("break", [0, 1, 2, 3, 4, 5], 15, false);
	}

	override public function update():Void
	{	
		super.update();

		if (!isOnScreen(FlxG.camera)) {
			kill();
		}

		if (animation.finished == true) {
			FlxSpriteUtil.fadeOut(this, 0.1, killAfterFadeOut);
		}
	}

	private function killAfterFadeOut(TweenInstance: FlxTween):Void
	{
		kill();
	}

}
