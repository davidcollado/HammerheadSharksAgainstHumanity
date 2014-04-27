package;

import flixel.effects.particles.FlxEmitter;
import flixel.util.FlxTimer;
import haxe.Timer;

class ExplosionEmitter extends FlxEmitter
{
	private var once:Bool = false;
	private var startTime:Float = 0;

	public function new(x:Int=0, y:Int=0, size:Int=0)
	{
		super(x, y, size);
	}

	override public function update():Void
	{
		super.update();

		if (once == false) {
			startTime = Timer.stamp();
			//FlxG.log.add('Start timer = '+startTime);
			once = true;
		}
		
		if (once == true && Timer.stamp() > startTime + (lifespan * 1000)) {
			exists = false;
			once = false;
		}
	}
}