package;

import flixel.FlxG;
import flixel.group.FlxTypedGroup;
import flixel.util.FlxRandom;
import flixel.util.FlxSpriteUtil;
import flixel.util.FlxPoint;

class PreyManager extends FlxTypedGroup<Prey>
{
	private static inline var RANGE_SPAWNING:Int = 200;

	public function new(MaxElements:Int) 
	{
		super();

		maxSize = MaxElements;

		for (i in 0...maxSize) {
			var _onePrey:Prey = new Prey(0, 0);
			_onePrey.exists = false;
			add(_onePrey);
		}
	}

	public function spawnPrey():Void
	{
		if (getFirstAvailable() != null) {
			var currentPrey:Prey = getFirstAvailable();

			var sectorX = FlxRandom.intRanged(0,1);

			// var frontBool:Bool = false;
			var screenSharkLeader:FlxPoint = Reg.sharkLeader.getScreenXY(FlxG.camera);

			var randomPositionX = FlxRandom.floatRanged(0, 1);
			var randomPositionY = FlxRandom.floatRanged(0, 1);

			if (sectorX == 0) {
				currentPrey.x = Reg.sharkLeader.x - screenSharkLeader.x - 10 - RANGE_SPAWNING * randomPositionX;
			}
			else if (sectorX == 1) {
				currentPrey.x = Reg.sharkLeader.x + (FlxG.camera.width - screenSharkLeader.x) + 10 + RANGE_SPAWNING * randomPositionX;
			}
			// else {
			// 	frontBool = true;
			// 	var extraPositionX = FlxRandom.floatRanged(-1, 1);
			// 	currentPrey.x = Reg.sharkLeader.x + (FlxG.camera.width * extraPositionX);
			// }
			
			var sectorY;
			// if (frontBool == true) {
				sectorY = FlxRandom.intRanged(0,1);
			// }  
			// else {
			// 	sectorY = FlxRandom.intRanged(0,2);
			// }

			if (sectorY == 0) {
				currentPrey.y = Reg.sharkLeader.y - screenSharkLeader.y - 10 - RANGE_SPAWNING * randomPositionY;
			}
			else if (sectorX == 1) {
				currentPrey.y = Reg.sharkLeader.y + (FlxG.camera.height - screenSharkLeader.y) + 10 + RANGE_SPAWNING * randomPositionY;
			}
			// else {
			// 	var extraPositionY = FlxRandom.floatRanged(-1, 1);
			// 	currentPrey.y = Reg.sharkLeader.y + (FlxG.camera.width * extraPositionY);
			// }

			//FlxG.log.add("Position of Spawned Prey x = "+currentPrey.x+" y = "+currentPrey.y);
			currentPrey.exists = true;
			currentPrey.alive = true;

			if (FlxG.overlap(currentPrey, this) == true) {
				currentPrey.exists = false;
				currentPrey.alive = false;
			}
		}
	}
}