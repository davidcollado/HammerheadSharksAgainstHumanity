package;

import flixel.FlxState;
import flixel.text.FlxText;

/**
 * Handy, pre-built Registry class that can be used to store 
 * references to objects and other things for quick-access. Feel
 * free to simply ignore it or change it in any way you like.
 */
class Reg
{
	// Image Paths
	public static inline var HAMMERSHARK_IMAGE:String = "assets/images/hammershark.png";
	public static inline var HAMMERSHARK_SMALL_1_SPRITESHEET:String = "assets/images/hammershark_small_1_spritesheet.png";
	public static inline var HAMMERSHARK_SMALL_2_SPRITESHEET:String = "assets/images/hammershark_small_2_spritesheet.png";
	public static inline var HAMMERSHARK_SMALL_3_SPRITESHEET:String = "assets/images/hammershark_small_3_spritesheet.png";
	public static inline var HAMMERSHARK_SMALL_4_SPRITESHEET:String = "assets/images/hammershark_small_4_spritesheet.png";
	public static inline var HAMMERSHARK_SMALL_LEADER_SPRITESHEET:String = "assets/images/hammershark_small_leader_spritesheet.png";
	public static inline var HAMMERSHARK_SMALL_IMAGE:String = "assets/images/hammershark_small.png";
	public static inline var HAMMERSHARK_LEADER_IMAGE:String = "assets/images/hammershark_leader.png";
	public static inline var ROCK_IMAGE:String = "assets/images/rock.png";
	public static inline var BUBBLE_IMAGE:String = "assets/images/bubble.png";
	public static inline var EXPLOSION_IMAGE:String = "assets/images/ExplosionParticle.png";
	public static inline var WAVE_SPRITESHEET:String = "assets/images/wave_spritesheet.png";
	public static inline var WAVE_BIG_SPRITESHEET:String = "assets/images/wave_big_spritesheet_2.png";

	// Constants
	public static inline var MAX_HAMMERSHARKS:Int = 50;
	public static inline var MAX_WAVES:Int = 50;
	public static inline var MAX_PREY:Int = 50;
	public static inline var MAX_TEXTS:Int = 15;
	public static inline var HAMMERSHARKS_SWIM_ANGULAR_SPEED:Int = 120 * 3;
	public static inline var HAMMERSHARKS_LINEAR_DRAG:Int = 90;
	public static inline var HAMMERSHARKS_ANGULAR_DRAG:Int = 1000;
	public static inline var HAMMERSHARKS_INITIAL_SPEED:Int = 120;
	public static inline var HAMMERSHARKS_STEP_SPEED:Int = 40;
	public static inline var HAMMERSHARKS_MIN_SPEED:Int = 80;
	public static inline var HAMMERSHARKS_MAX_SPEED:Int = 400;
	public inline static var SHAKE_INTENSITY:Float = 0.008;
	public inline static var SHAKE_DURATION:Float = 0.1;

	public static var LEVEL_WIDTH:Int;
	public static var LEVEL_HEIGHT:Int;

	// Global accessors
	public static var sharkLeader:HammerShark;
	public static var gameState:PlayState;
	public static var gameStateVar:Int = 0;
	public static var score:Int = 0;
	public static var scoreValueText:FlxText;
	public static var fx:Fx;
	public static var scoreMovingTextManager:ScoreTextManager;
}