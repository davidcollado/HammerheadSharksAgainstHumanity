package;

import flixel.FlxG;
import flixel.group.FlxTypedGroup;
import flixel.util.FlxRandom;
import flixel.util.FlxSpriteUtil;

class SharkManager extends FlxTypedGroup<HammerShark>
{
	public function new(MaxElements:Int) 
	{
		super();

		maxSize = MaxElements;

		for (i in 0...maxSize) {
			var _oneHammerShark:HammerShark = new HammerShark(0, 0, false);
			_oneHammerShark.exists = false;
			add(_oneHammerShark);
		}

		for (i in 0...Reg.INITIAL_SHARKS) {
			spawnShark();
		}
	}

	public function spawnShark():Void
	{
		if (getFirstAvailable() != null) {
			var currentShark:HammerShark = getFirstAvailable();

			var randomPositionX = FlxRandom.floatRanged(-1, 1);
			var randomPositionY = FlxRandom.floatRanged(-1, 1);
			var offset = countLiving();

			FlxG.log.add("randomPositionX = "+randomPositionX);
			FlxG.log.add("randomPositionY = "+randomPositionY);

			if (offset < 10) {
				offset = 10;
			}
			else if (offset < 20) {
				offset = 20;
			}
			else if (offset < 30) {
				offset = 30;
			}
			else if (offset < 40) {
				offset = 40;
			}
			else if (offset < 50) {
				offset = 50;
			}

			offset *= 2;

			if (randomPositionX > 0)
				currentShark.x = Reg.sharkLeader.x + ( (offset * randomPositionX) + randomPositionX * 10);
			else {
				currentShark.x = Reg.sharkLeader.x - ( (offset * Math.abs(randomPositionX))  + Math.abs(randomPositionX) * 10);
			}
			if (randomPositionY > 0) {
				currentShark.y = Reg.sharkLeader.y + ( (offset * randomPositionY)  + randomPositionY * 10);
			}
			else {
				currentShark.y = Reg.sharkLeader.y - ( (offset * Math.abs(randomPositionY))  + Math.abs(randomPositionY) * 10);
			}

			currentShark.exists = true;
			currentShark.alive = true;
			currentShark.alpha = 0;
			currentShark.angle = Reg.sharkLeader.angle;
			FlxSpriteUtil.fadeIn(currentShark, 0.3);
		}
	}
}