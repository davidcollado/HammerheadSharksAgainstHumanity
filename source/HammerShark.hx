package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxAngle;
import flixel.util.FlxVelocity;
import flixel.util.FlxPoint;
import flixel.group.FlxTypedGroup;
import flixel.util.FlxSpriteUtil;
import haxe.Timer;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.util.FlxRandom;
import flixel.effects.particles.FlxEmitter;

using flixel.util.FlxMath;
using flixel.util.FlxVector;

class HammerShark extends FlxSprite
{
	// Thrust
	private var _bakedThrust:Float;
	private var _userThrust:Float;
	
	// Wooble
	private var _woobleTween:FlxTween;
	public var _wooble:Float;

	// Is Leader?
	private var _isLeader:Bool;

	private var _lerpValue:Float;

	private var _bubbleEmmiter:FlxEmitter;

	public function new(X:Float = 0, Y:Float = 0, Leader:Bool = false)
	{
		super(X, Y);

		//Shark physics
		maxVelocity.set(Reg.HAMMERSHARKS_MAX_SPEED, Reg.HAMMERSHARKS_MAX_SPEED);
		maxAngular = Reg.HAMMERSHARKS_SWIM_ANGULAR_SPEED;
		drag.set(Reg.HAMMERSHARKS_LINEAR_DRAG, 0);
		angularDrag = Reg.HAMMERSHARKS_ANGULAR_DRAG;
		_bakedThrust = 0;
		_userThrust = Reg.HAMMERSHARKS_INITIAL_SPEED;

		_isLeader = Leader;

		if (_isLeader == true) {
			//visible = false;
			//loadGraphic(Reg.HAMMERSHARK_LEADER_IMAGE, false);
			loadGraphic(Reg.HAMMERSHARK_SMALL_LEADER_SPRITESHEET, true, false, 32, 8, false);
			// Setup and start animation
    		animation.add("swim", [0, 1, 2], 10, true);
			animation.play("swim");
		}
		else {
			var sharkColor:Int = FlxRandom.intRanged(0,4);

			switch(sharkColor){
				case 0:
					loadGraphic(Reg.HAMMERSHARK_SMALL_1_SPRITESHEET, true, false, 32, 8, false);
				case 1:
					loadGraphic(Reg.HAMMERSHARK_SMALL_2_SPRITESHEET, true, false, 32, 8, false);
				case 2:
					loadGraphic(Reg.HAMMERSHARK_SMALL_3_SPRITESHEET, true, false, 32, 8, false);
				case 3:
					loadGraphic(Reg.HAMMERSHARK_SMALL_4_SPRITESHEET, true, false, 32, 8, false);
				case 4:
					loadGraphic(Reg.HAMMERSHARK_SMALL_LEADER_SPRITESHEET, true, false, 32, 8, false);
			}

			_lerpValue = FlxRandom.floatRanged(0.5, 0.9);

			// Set up bubble Emitter
			_bubbleEmmiter = new FlxEmitter();
			_bubbleEmmiter.setSize(8, 8);
			_bubbleEmmiter.setXSpeed(-80, 80);
			_bubbleEmmiter.setYSpeed(-80, 80);
			_bubbleEmmiter.setRotation(0, 0);
			_bubbleEmmiter.makeParticles(Reg.BUBBLE_IMAGE, 20, 0, false, 0);
			_bubbleEmmiter.start(false, 50, 0.1);
			Reg.gameState.add(_bubbleEmmiter);

			var WOBBLE_LIMIT:Float = FlxRandom.floatRanged(0.5, 1.5); // degrees
    		var WOBBLE_SPEED:Float = FlxRandom.floatRanged(0.35, 0.45); // seconds

    		_wooble = WOBBLE_LIMIT;
    		_woobleTween = FlxTween.multiVar(this, 
    			{ _wooble: -WOBBLE_LIMIT }, 
    			WOBBLE_SPEED, 
    			{ type: FlxTween.PINGPONG, ease: FlxEase.sineInOut });

    		// Setup and start animation
    		animation.add("swim", [0, 1, 2], 10, true);
			animation.play("swim");
    	}
	}

	override public function update():Void
	{	
		if (_isLeader == true) {
			if (Reg.gameStateVar == 2) {
				// Rotation
				if (FlxG.keys.pressed.RIGHT && FlxG.keys.pressed.LEFT) {
					angularAcceleration = 0;
				}
				else {
					var rotating:Bool = false;

					if (FlxG.keys.justPressed.LEFT || FlxG.keys.justPressed.RIGHT) {
						angularAcceleration = 0;
					}

					if (FlxG.keys.pressed.LEFT) {
						angularAcceleration -= Reg.HAMMERSHARKS_SWIM_ANGULAR_SPEED;
						rotating = true;
					}

					if (FlxG.keys.pressed.RIGHT) {
						angularAcceleration += Reg.HAMMERSHARKS_SWIM_ANGULAR_SPEED;
						rotating = true;
					}

					if (rotating == false) {
						angularAcceleration = 0;
					}
				}

				// Forward - Acceleration
				// if (FlxG.keys.justPressed.UP) {
				// 	if (_userThrust < Reg.HAMMERSHARKS_MAX_SPEED) {
				// 		_userThrust += Reg.HAMMERSHARKS_STEP_SPEED;
				// 	}
				// 	//FlxG.log.add("_userThrust = "+_userThrust);
				// }
				// if (FlxG.keys.justPressed.DOWN) {
				// 	if (_userThrust > Reg.HAMMERSHARKS_MIN_SPEED) {
				// 		_userThrust -= Reg.HAMMERSHARKS_STEP_SPEED;
				// 	}
				// 	//FlxG.log.add("_userThrust = "+_userThrust);
				// }
				_userThrust = Reg.HAMMERSHARKS_MAX_SPEED;
			}

			_bakedThrust = FlxVelocity.computeVelocity(_userThrust, _bakedThrust, drag.x, Reg.HAMMERSHARKS_MAX_SPEED);
			FlxAngle.rotatePoint(_bakedThrust, 0, 0, 0, angle, velocity);
			velocity.set(velocity.x + FlxRandom.floatRanged(-10, 10),
							velocity.y + FlxRandom.floatRanged(-10, 10));
		}
		else {
			angle += _wooble;

			angularAcceleration = Reg.sharkLeader.angularAcceleration;

			var tempPosVector = new FlxPoint(x, y);
			var tempLeaderVector = new FlxPoint(Reg.sharkLeader.x, Reg.sharkLeader.y);
			if (tempPosVector.distanceTo(tempLeaderVector) > 400) {
				FlxSpriteUtil.fadeOut(this, 0.1, killAfterFadeOut);
			}
			if (tempPosVector.distanceTo(tempLeaderVector) > 50) {
				velocity.set(Reg.sharkLeader.velocity.x,
								Reg.sharkLeader.velocity.y);
			}
			else {
				velocity.set(Reg.sharkLeader.velocity.x + FlxRandom.floatRanged(-10, 10),
								Reg.sharkLeader.velocity.y + FlxRandom.floatRanged(-10, 10));
			}

			_bubbleEmmiter.x = last.x;
			_bubbleEmmiter.y = last.y;	
		}
		super.update();

		if (_isLeader == false) {
			angularVelocity = myLerp(angularVelocity, Reg.sharkLeader.angularVelocity, 0.9);
		}
		else {
			if (Std.int(x) < -200 || Std.int(y) < -200 || Std.int(x) > (Reg.LEVEL_WIDTH + 200) || Std.int(y) > (Reg.LEVEL_HEIGHT + 200)) {
				// Game Ended - You freed the Sharks
				if (Reg.gameStateVar != 3) {
					FlxG.log.add("End Game - FREE");
					Reg.gameState.freeSharksEndGame();
				}
			}
		}
	}

	private function myLerp(a:Float, b:Float, x:Float):Float
	{
		return a + x * (b - a);
	}

	public static function collidedWithPrey(CollidedPrey:Prey, CollidedShark:HammerShark):Void
	{
		//FlxG.log.add("Collision");
		//collidedPrey._collisionsWithShark += 1;

		//if (collidedPrey._collisionsWithShark > 3) {
			Reg.fx.explodePrey(CollidedShark.x, CollidedShark.y);
			FlxG.camera.shake(Reg.SHAKE_INTENSITY, Reg.SHAKE_DURATION);
			CollidedPrey.kill();
			var pointsScored:Int = Std.int(100 * CollidedPrey._pointsMultiplier);
			Reg.score += pointsScored;
			Reg.scoreMovingTextManager.spawnText(CollidedPrey.x, CollidedPrey.y, pointsScored);
			Reg.scoreValueText.text = ""+Reg.score;
		//}
	}

	private function killAfterFadeOut(TweenInstance: FlxTween):Void
	{
		kill();
	}
}
