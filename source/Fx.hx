package;

import flixel.group.FlxGroup;
import flixel.effects.particles.FlxEmitter;
import flixel.FlxG;

class Fx extends FlxGroup
{
	private var _explosionEmitterGroup:FlxGroup;

	public function new() 
	{
		super();

		_explosionEmitterGroup = new FlxGroup();

		//	Here we create an FlxGroup containing 40 FlxEmitters, all the same, used when the wall is shot/explodes
		for (i in 0...40) {
			var tempExplosionEmitter:ExplosionEmitter = new ExplosionEmitter(0, 0, 20);
			tempExplosionEmitter.setSize(8, 8);
			tempExplosionEmitter.setXSpeed(-50, 50);
			tempExplosionEmitter.setYSpeed(-50, 50);
			for (j in 0...20) {
				tempExplosionEmitter.add(new ExplosionParticle());
			}
			tempExplosionEmitter.exists = false;
			_explosionEmitterGroup.add(tempExplosionEmitter);
		}
		add(_explosionEmitterGroup);
	}


	public function explodePrey(ax:Float, ay:Float):Void
	{
		var currentRecycledPixel:ExplosionEmitter = cast(_explosionEmitterGroup.recycle(ExplosionEmitter), ExplosionEmitter);

		if (currentRecycledPixel != null) {
			currentRecycledPixel.x = ax;
			currentRecycledPixel.y = ay;
			currentRecycledPixel.start(true, 1, 0, 0);
		}
		else {
			//FlxG.log.add('No more emitters');
		}
	}
}