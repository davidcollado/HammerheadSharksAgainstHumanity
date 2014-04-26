package;

import flixel.FlxG;
import flixel.group.FlxTypedGroup;
import flixel.util.FlxRandom;
import flixel.util.FlxSpriteUtil;

class WaveManager extends FlxTypedGroup<Wave>
{
	public function new(MaxElements:Int) 
	{
		super();

		maxSize = MaxElements;

		for (i in 0...maxSize) {
			var _oneWave:Wave = new Wave(0, 0);
			_oneWave.exists = false;
			add(_oneWave);
		}
	}

	public function spawnWave():Void
	{
		if (getFirstAvailable() != null) {
			var currentWave:Wave = getFirstAvailable();

			var randomPositionX = FlxRandom.floatRanged(-1, 1);
			var randomPositionY = FlxRandom.floatRanged(-1, 1);

			//FlxG.log.add("randomPositionX = "+randomPositionX);
			//FlxG.log.add("randomPositionY = "+randomPositionY);

			currentWave.x = Reg.sharkLeader.x + FlxG.width * randomPositionX;
			currentWave.y = Reg.sharkLeader.y + FlxG.height * randomPositionY;

			currentWave.exists = true;
			currentWave.alive = true;
			currentWave.alpha = 0;

			FlxSpriteUtil.fadeIn(currentWave, 0.1);
			currentWave.animation.play("break");
		}
	}
}