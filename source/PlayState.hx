package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxMath;
import flixel.util.FlxColor;
import flixel.group.FlxTypedGroup;
import flixel.util.FlxRandom;
import flixel.util.FlxCollision;
import flixel.util.FlxPoint;
import flixel.util.FlxSpriteUtil;
import flixel.tweens.FlxTween;
import flixel.FlxCamera;
import flash.Lib;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
	private var _hammerSharks:SharkManager;
	private var _leaderShark:HammerShark;

	private var _waveGroup:WaveManager;
	private var _preyGroup:PreyManager;

	// Menu Texts
	private var _startText1:FlxText;
	private var _startText2:FlxText;
	private var _startText3:FlxText;
	private var _pressStartText:FlxText;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		// Call to super
		super.create();

		Reg.gameState = this;

		// Create Leader Shark
		Reg.sharkLeader = new HammerShark(FlxG.width/2, FlxG.height/2, true);
		add(Reg.sharkLeader);

		// Create followers group
		_hammerSharks = new SharkManager(Reg.MAX_HAMMERSHARKS);
		add(_hammerSharks);

		_waveGroup = new WaveManager(Reg.MAX_WAVES);
		add(_waveGroup);

		_preyGroup = new PreyManager(Reg.MAX_PREY);
		add(_preyGroup);

		FlxG.log.add("Number of Sharks on Init = "+_hammerSharks.length);
		
		// Set up camera
		Reg.LEVEL_MIN_X = -Lib.current.stage.stageWidth * 4;
		Reg.LEVEL_MAX_X = Lib.current.stage.stageWidth * 8;
		Reg.LEVEL_MIN_Y = -Lib.current.stage.stageHeight * 2;
		Reg.LEVEL_MAX_Y = Lib.current.stage.stageHeight * 4;

		FlxG.camera.bgColor = FlxColor.ROYAL_BLUE;
		FlxG.camera.follow(Reg.sharkLeader, FlxCamera.STYLE_TOPDOWN_TIGHT);
		FlxG.camera.followLerp = 24;
		FlxG.camera.followLead.set(12, 12);

		// Debugging
		//setupDebug();

		// Show Start Menu
		addStartMenu();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();

		if (Reg.gameStateVar == 2) {

			var screenSharkLeader:FlxPoint = Reg.sharkLeader.getScreenXY(FlxG.camera);

			if (screenSharkLeader != null) {
				FlxG.camera.setBounds(Reg.sharkLeader.x - screenSharkLeader.x - FlxG.width, 
					Reg.sharkLeader.y - screenSharkLeader.y - FlxG.height, 
					Reg.sharkLeader.x + (FlxG.camera.width - screenSharkLeader.x) + (3 * FlxG.width), 
					Reg.sharkLeader.y + (FlxG.camera.height - screenSharkLeader.y) + (3 * FlxG.height), true);
			}
			else {
				FlxG.log.add("Bug found!");
			}


			if (FlxRandom.float() < 0.5) {
				//FlxG.log.add("Creating Wave!");
				_waveGroup.spawnWave();
			}

			if (FlxRandom.float() < 0.5) {
				//FlxG.log.add("Creating Prey!");
				_preyGroup.spawnPrey();
			}
			//checkPixelPerfectCollisions();
			checkDefaultCollisions();
		}
		else if (Reg.gameStateVar == 0){
			if (FlxG.mouse.justPressed) {
				Reg.gameStateVar = 1;
				FlxSpriteUtil.fadeOut(_startText1, 0.1);
				FlxSpriteUtil.fadeOut(_startText2, 0.1);
				FlxSpriteUtil.fadeOut(_pressStartText, 0.1, fadeOutAndInstructions);
			}
		}
		else if (Reg.gameStateVar == 1) {
			if (FlxG.mouse.justPressed) {
				FlxG.mouse.visible = false;
				Reg.gameStateVar = 2;
				FlxSpriteUtil.fadeOut(_startText2, 0.1);
				FlxSpriteUtil.fadeOut(_startText3, 0.1);
				FlxSpriteUtil.fadeOut(_pressStartText, 0.1);
			}
		}
	}	

	private function checkDefaultCollisions():Void
	{
		FlxG.collide(_preyGroup, _hammerSharks, HammerShark.collidedWithPrey);
	}

	private function checkPixelPerfectCollisions():Void
	{
		for (i in 0..._hammerSharks.length) 
		{
			var obj1 = _hammerSharks.members[i];
			var collides = false;
			
			// Only collide alive members
			if (!obj1.alive) continue;
			
			for (j in 0..._preyGroup.length) 
			{
				var obj2 = _preyGroup.members[j];
				
				// Only collide alive members and don't collide an object with itself
				if (!_preyGroup.alive || (i == j)) continue;
				
				// this is how we check if obj1 and obj2 are colliding
				if (FlxCollision.pixelPerfectCheck(obj1, obj2)) 
				{	
					collides = true;
					obj2.kill();
					break;
				}
			}	
		}
	}

	private function setupDebug():Void
	{
		FlxG.debugger.toggleKeys = ["U", "I"];
		FlxG.debugger.visible = true;
		FlxG.mouse.visible = true;
		//FlxG.debugger.drawDebug = true;
		FlxG.log.add("Staring log services...");

		FlxG.watch.add(Reg.sharkLeader, "x");
		FlxG.watch.add(Reg.sharkLeader, "y");
	}

	public function addStartMenu():Void
	{
		_startText1 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 - 150, 800);
		_startText1.alignment = "center";
		_startText1.size = 40;
		_startText1.color =  0xffD12503;
		_startText1.text = "Hammerhead Sharks Against The World";
		_startText1.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText1.scrollFactor.set(0, 0);
		add(_startText1);
		_startText2 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 + 210, 800);
		_startText2.alignment = "center";
		_startText2.size = 20;
		_startText2.color =  0xffD12503;
		_startText2.text = "A GAME BY DAVID COLLADO FOR LUDUM DARE 29. 2014\n@davidcollado";
		_startText2.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText2.scrollFactor.set(0, 0);
		add(_startText2);
		_pressStartText = new FlxText(FlxG.width/2 - 400, FlxG.height/3 + 275, 800);
		_pressStartText.alignment = "center";
		_pressStartText.size = 35;
		_pressStartText.color =  0xffD12503;
		_pressStartText.text = "CLICK TO START";
		_pressStartText.setBorderStyle(FlxText.BORDER_SHADOW);
		FlxSpriteUtil.flicker(_pressStartText, 0, 0.4, false, true);
		_pressStartText.scrollFactor.set(0, 0);
		add(_pressStartText);
	}

	public function addInstructionsMenu():Void
	{
		_startText3 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 + 210, 800);
		_startText3.alignment = "center";
		_startText3.size = 20;
		_startText3.color =  0xffD12503;
		_startText3.text = "LEFT AND RIGHT -> STEER THE FLOCK OF HAMMER SHARKS";
		_startText3.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText3.scrollFactor.set(0, 0);
		add(_startText3);
		_startText2 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 + 240, 800);
		_startText2.alignment = "center";
		_startText2.size = 20;
		_startText2.color =  0xffD12503;
		_startText2.text = "UP -> INCREASE SPEED";
		_startText2.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText2.scrollFactor.set(0, 0);
		add(_startText2);
		_pressStartText = new FlxText(FlxG.width/2 - 400, FlxG.height/3 + 275, 800);
		_pressStartText.alignment = "center";
		_pressStartText.size = 35;
		_pressStartText.color =  0xffD12503;
		_pressStartText.text = "CLICK TO PLAY";
		_pressStartText.setBorderStyle(FlxText.BORDER_SHADOW);
		_pressStartText.scrollFactor.set(0, 0);
		FlxSpriteUtil.flicker(_pressStartText, 0, 0.4, false, true);
		add(_pressStartText);
	}

	private function fadeOutAndInstructions(TweenInstance: FlxTween):Void
	{
		addInstructionsMenu();
	}
}