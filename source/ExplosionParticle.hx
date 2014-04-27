package;

import flixel.effects.particles.FlxParticle;

class ExplosionParticle extends FlxParticle
{
	public function new() 
	{
		super();
		loadGraphic(Reg.EXPLOSION_IMAGE, false, false, 10, 10, false);
		exists = false;
		solid = false;
	}

	override public function update():Void
	{
		super.update();
		if (isOnScreen() == false) {
			kill();
		}
	}
}