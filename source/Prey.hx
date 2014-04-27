package;

import flixel.FlxSprite;
import flixel.util.FlxPoint;
import flixel.FlxG;
import flixel.util.FlxRandom;
import flixel.effects.particles.FlxEmitter;

using flixel.util.FlxVector;

class Prey extends FlxSprite
{
	public var _collisionsWithShark:Int = 0;
	public var _pointsMultiplier:Float;

	private var _bubbleEmmiter:FlxEmitter;

	public function new(X:Float, Y:Float) 
	{
		super(X, Y);

		var preyColor:Int = FlxRandom.intRanged(0,2);
		switch(preyColor){
			case 0:
			loadGraphic(Reg.SIMPLESHIP_1_IMAGE, false, false, 48, 18, false);
			case 1:
			loadGraphic(Reg.SIMPLESHIP_2_IMAGE, false, false, 48, 18, false);
			case 2:
			loadGraphic(Reg.SIMPLESHIP_3_IMAGE, false, false, 48, 18, false);
		}

		//moves = false;

		var scaleRandom:Float = FlxRandom.floatRanged(1, 3);
		_pointsMultiplier = scaleRandom;

		scale.set(scaleRandom, scaleRandom);
		updateHitbox();

		velocity.x = FlxRandom.floatRanged(-60, 60);
		velocity.y = 0;

		// Set up bubble Emitter
		_bubbleEmmiter = new FlxEmitter();
		_bubbleEmmiter.setSize(12,12);
		_bubbleEmmiter.setXSpeed(-velocity.x * 1.7, -velocity.x * 1.7);
		_bubbleEmmiter.setYSpeed(-10, 10);
		_bubbleEmmiter.setRotation(0, 0);
		_bubbleEmmiter.makeParticles(Reg.SPLASH_IMAGE, 20, 0, false, 0);
		_bubbleEmmiter.start(false, 20, 0.1);
		Reg.gameState.add(_bubbleEmmiter);
	}

	override public function update():Void
	{	
		super.update();

		velocity.y = 0;
		acceleration.y = 0;

		_bubbleEmmiter.x = last.x;
		_bubbleEmmiter.y = last.y;

		var tempPosVector = new FlxPoint(x, y);
		var tempLeaderVector = new FlxPoint(Reg.sharkLeader.x, Reg.sharkLeader.y);
		if (tempPosVector.distanceTo(tempLeaderVector) > FlxG.camera.width * 2) {
				kill();
		}
	}
}