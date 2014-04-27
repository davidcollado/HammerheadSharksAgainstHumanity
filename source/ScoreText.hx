package;

import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.util.FlxSpriteUtil;
import flixel.util.FlxRandom;
import flixel.FlxG;

class ScoreText extends FlxText
{
	public function new(X:Float, Y:Float, Width:Int) 
	{
		super(X, Y, Width);
	}

	public function runTextTo(X:Int, Y:Int):Void
	{
		var TRAVEL_SPEED:Float = FlxRandom.floatRanged(0.1, 0.3); // seconds
		var travelTween:FlxTween;
		travelTween = FlxTween.multiVar(this, 
			{ x: Reg.scoreValueText.x + 600, y: Reg.scoreValueText.y, size: 20}, 
			TRAVEL_SPEED,
			{ type: FlxTween.ONESHOT, ease: FlxEase.sineInOut , complete: fadeOutAfterMerging});
	}

	private function fadeOutAfterMerging(TweenInstance: FlxTween):Void
	{
		FlxG.log.add("Tween ended");
		kill();
	}
}