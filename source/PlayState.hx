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
import flixel.util.FlxSave;
import haxe.Timer;
import flixel.util.FlxTimer;

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

	private var _scoreLabelText:FlxText;

	private var _highScoreLabelText:FlxText;
	private var _highScoreValueText:FlxText;

	private var _mouseReleasePending:Bool = false;

	private var _startMenuShown:Bool = false;
	private var _instructionsMenuShown:Bool = false;
	private var _endMenuShown:Bool = false;

	private var _frontVeil:Frontdrop;

	private var _countdownValue:Int;
	private var _gameStartTimer:Float;

	private var _timerText:FlxText;

	private var _countdownTimer:FlxTimer;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		// Call to super
		super.create();

		Reg.gameState = this;

		_countdownValue = Reg.START_COUNTDOWN;

		// FlxSave code
		Reg.saveState = new FlxSave();
		Reg.saveState.bind("HammerheadSave");

		if (Reg.saveState.data.highScore != 0) {
			Reg.highScore = Reg.saveState.data.highScore;
		}
		else {
			Reg.highScore = 0;
		}

		Reg.LEVEL_WIDTH = Lib.current.stage.stageWidth * 8;
		Reg.LEVEL_HEIGHT = Lib.current.stage.stageHeight * 16;

		FlxG.log.add("Reg.LEVEL_WIDTH = "+Reg.LEVEL_WIDTH);
		FlxG.log.add("Reg.LEVEL_HEIGHT = "+Reg.LEVEL_HEIGHT);

		// Create Leader Shark
		Reg.sharkLeader = new HammerShark(Reg.LEVEL_WIDTH / 2, Reg.LEVEL_HEIGHT / 2, true);
		add(Reg.sharkLeader);

		// Create followers group
		_hammerSharks = new SharkManager(Reg.MAX_HAMMERSHARKS);
		add(_hammerSharks);
		FlxG.log.add("Number of Sharks on Init = "+_hammerSharks.length);

		// Create Fx class
		Reg.fx = new Fx();
		add(Reg.fx);

		_frontVeil = new Frontdrop(0, 0);
		add(_frontVeil);
		_frontVeil.active = false;

		_waveGroup = new WaveManager(Reg.MAX_WAVES);
		add(_waveGroup);

		_preyGroup = new PreyManager(Reg.MAX_PREY);
		add(_preyGroup);

		Reg.scoreMovingTextManager = new ScoreTextManager(Reg.MAX_TEXTS);
		add(Reg.scoreMovingTextManager);

		// Set up score text
		_scoreLabelText = new FlxText(FlxG.width/2 - 325, FlxG.height/3 - 160, 800);
		_scoreLabelText.alignment = "right";
		_scoreLabelText.size = 20;
		_scoreLabelText.color = FlxColor.RED;
		_scoreLabelText.text = "Score";
		_scoreLabelText.setBorderStyle(FlxText.BORDER_SHADOW);
		_scoreLabelText.scrollFactor.set(0, 0);
		_scoreLabelText.visible = false;
		add(_scoreLabelText);

		Reg.scoreValueText = new FlxText(FlxG.width/2 - 325, FlxG.height/3 - 130, 800);
		Reg.scoreValueText.alignment = "right";
		Reg.scoreValueText.size = 20;
		Reg.scoreValueText.color = FlxColor.WHITE;
		Reg.scoreValueText.text = "0";
		Reg.scoreValueText.setBorderStyle(FlxText.BORDER_SHADOW);
		Reg.scoreValueText.scrollFactor.set(0, 0);
		Reg.scoreValueText.visible = false;
		add(Reg.scoreValueText);

		_highScoreLabelText = new FlxText(5, FlxG.height/3 - 160, 800);
		_highScoreLabelText.alignment = "left";
		_highScoreLabelText.size = 20;
		_highScoreLabelText.color = FlxColor.RED;
		_highScoreLabelText.text = "High Score";
		_highScoreLabelText.setBorderStyle(FlxText.BORDER_SHADOW);
		_highScoreLabelText.scrollFactor.set(0, 0);
		add(_highScoreLabelText);

		_highScoreValueText = new FlxText(5, FlxG.height/3 - 130, 800);
		_highScoreValueText.alignment = "left";
		_highScoreValueText.size = 20;
		_highScoreValueText.color = FlxColor.WHITE;
		_highScoreValueText.text = ""+Reg.highScore;
		_highScoreValueText.setBorderStyle(FlxText.BORDER_SHADOW);
		_highScoreValueText.scrollFactor.set(0, 0);
		add(_highScoreValueText);

		// Set up camera
		FlxG.camera.bgColor = FlxColor.ROYAL_BLUE;
		FlxG.camera.follow(Reg.sharkLeader, FlxCamera.STYLE_TOPDOWN_TIGHT);
		FlxG.worldBounds.set(0, 0, Reg.LEVEL_WIDTH, Reg.LEVEL_HEIGHT);
		FlxG.camera.setBounds(0, 0, Reg.LEVEL_WIDTH, Reg.LEVEL_HEIGHT);
	
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
			if (FlxG.mouse.visible == true) {
				FlxG.mouse.visible = false;
			}
			// if (Timer.stamp() > _gameStartTimer + 1) {
			// 	if (_countdownValue == 0) {
			// 		freeSharksEndGame();
			// 	}
			// 	else {
			// 		_countdownValue -= 1;
			// 		_gameStartTimer = Timer.stamp();
			// 		updateCountdown(_countdownValue);
			// 	}
			// }

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
			if (_mouseReleasePending == false && _startMenuShown == true && FlxG.mouse.justPressed) {
				_mouseReleasePending = true;

				Reg.gameStateVar = 1;
				FlxSpriteUtil.fadeOut(_startText1, 0.1);
				FlxSpriteUtil.fadeOut(_startText2, 0.1);
				FlxSpriteUtil.fadeOut(_pressStartText, 0.1, fadeOutAndInstructions);
			}
		}
		else if (Reg.gameStateVar == 1) {
			if (_mouseReleasePending == false && _instructionsMenuShown == true && FlxG.mouse.justPressed) {
				_mouseReleasePending = true;

				FlxG.mouse.visible = false;
				Reg.gameStateVar = 2;
				FlxSpriteUtil.fadeOut(_startText2, 0.1);
				FlxSpriteUtil.fadeOut(_startText3, 0.1);
				FlxSpriteUtil.fadeOut(_pressStartText, 0.1);

				FlxG.camera.followLerp = 24;
				FlxG.camera.followLead.set(24, 24);

				_scoreLabelText.visible = true;
				Reg.scoreValueText.visible = true;

				startCountdown(Reg.START_COUNTDOWN);
				_gameStartTimer = Timer.stamp();
			}
		}
		else if (Reg.gameStateVar == 3) {
			if (FlxG.mouse.visible == false) {
				FlxG.mouse.visible = true;
			}
			
			if (_mouseReleasePending == false && _endMenuShown == true && FlxG.mouse.justPressed) {
				_mouseReleasePending = true;

				Reg.gameStateVar = 0;
				FlxG.resetState();
			}
		}

		if (FlxG.mouse.justReleased || (FlxG.mouse.pressed == false && FlxG.mouse.justPressed == false)) {
			_mouseReleasePending = false;
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
		FlxG.watch.add(_hammerSharks, "length", "number of sharks");

		FlxG.watch.add(FlxG.camera.deadzone, "x", "deadzone x");
		FlxG.watch.add(FlxG.camera.deadzone, "y", "deadzone y");

		FlxG.watch.add(FlxG.camera.deadzone, "width", "deadzone width");
		FlxG.watch.add(FlxG.camera.deadzone, "height", "deadzone height");

		FlxG.watch.add(FlxG.camera, "width", "Camera width");
		FlxG.watch.add(FlxG.camera, "height", "Camera height");
		FlxG.watch.add(FlxG.camera.scroll, "x", "Camera Scroll x");
		FlxG.watch.add(FlxG.camera.scroll, "y", "Camera Scroll y");

		FlxG.watch.add(FlxG.camera._scrollTarget, "x", "Camera Scroll Target x");
		FlxG.watch.add(FlxG.camera._scrollTarget, "y", "Camera Scroll Target y");

		FlxG.watch.add(FlxG.camera._lastTargetPosition, "x", "Camera Scroll Last Target x");
		FlxG.watch.add(FlxG.camera._lastTargetPosition, "y", "Camera Scroll Last Target y");
	}

	public function addStartMenu():Void
	{
		_startText1 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 - 150, 800);
		_startText1.alignment = "center";
		_startText1.size = 40;
		_startText1.color = FlxColor.RED;
		_startText1.text = "HAMMERHEAD SHARKS\nAgainst Humanity";
		_startText1.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText1.scrollFactor.set(0, 0);
		add(_startText1);
		_startText2 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 - 40, 800);
		_startText2.alignment = "center";
		_startText2.size = 20;
		_startText2.color = FlxColor.WHITE;
		_startText2.text = "A game by David Collado for Ludum Dare 29.\n@davidcollado - 2014";
		_startText2.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText2.scrollFactor.set(0, 0);
		add(_startText2);
		_pressStartText = new FlxText(FlxG.width/2 - 400, FlxG.height/3 + 275, 800);
		_pressStartText.alignment = "center";
		_pressStartText.size = 35;
		_pressStartText.color = FlxColor.RED;
		_pressStartText.text = "Click to START";
		_pressStartText.setBorderStyle(FlxText.BORDER_SHADOW);
		FlxSpriteUtil.flicker(_pressStartText, 0, 0.4, false, true);
		_pressStartText.scrollFactor.set(0, 0);
		add(_pressStartText);

		_startMenuShown = true;
	}

	public function addInstructionsMenu():Void
	{
		_startText3 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 -130, 800);
		_startText3.alignment = "center";
		_startText3.size = 20;
		_startText3.color = FlxColor.RED;
		_startText3.text = "LEFT / RIGHT -> Steer the flock of HAMMERHEAD SHARKS";
		_startText3.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText3.scrollFactor.set(0, 0);
		add(_startText3);
		_startText2 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 - 100, 800);
		_startText2.alignment = "center";
		_startText2.size = 30;
		_startText2.color = FlxColor.WHITE;
		_startText2.text = "You have "+Reg.START_COUNTDOWN+" seconds to CONTROL the HAMMERHEAD SHARKS!";
		_startText2.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText2.scrollFactor.set(0, 0);
		add(_startText2);
		_pressStartText = new FlxText(FlxG.width/2 - 400, FlxG.height/3 + 275, 800);
		_pressStartText.alignment = "center";
		_pressStartText.size = 35;
		_pressStartText.color = FlxColor.RED;
		_pressStartText.text = "WREACK HAVOC!";
		_pressStartText.setBorderStyle(FlxText.BORDER_SHADOW);
		_pressStartText.scrollFactor.set(0, 0);
		FlxSpriteUtil.flicker(_pressStartText, 0, 0.4, false, true);
		add(_pressStartText);

		_instructionsMenuShown = true;
	}

	public function addEndGameFreeSharksMenu():Void
	{
		_startText1 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 - 150, 800);
		_startText1.alignment = "center";
		_startText1.size = 40;
		_startText1.color =  FlxColor.RED;
		_startText1.text = "Hammerhead Sharks\nAgainst Humanity";
		_startText1.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText1.scrollFactor.set(0, 0);
		add(_startText1);
		_startText3 = new FlxText(FlxG.width/2 - 400, FlxG.height/2 - 50, 800);
		_startText3.alignment = "center";
		_startText3.size = 27;
		_startText3.color =  FlxColor.RED;
		_startText3.text = "Your score is "+Reg.score;
		_startText3.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText3.scrollFactor.set(0, 0);
		add(_startText3);
		_startText2 = new FlxText(FlxG.width/2 - 400, FlxG.height/2, 800);
		_startText2.alignment = "center";
		_startText2.size = 35;
		_startText2.color =  FlxColor.WHITE;
		_startText2.text = "Now the HAMMERHEAD SHARKS are free ... \nBENEATH THE SURFACE";
		_startText2.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText2.scrollFactor.set(0, 0);
		add(_startText2);
		_pressStartText = new FlxText(FlxG.width/2 - 400, FlxG.height/3 + 275, 800);
		_pressStartText.alignment = "center";
		_pressStartText.size = 35;
		_pressStartText.color =  FlxColor.RED;
		_pressStartText.text = "Click here";
		_pressStartText.setBorderStyle(FlxText.BORDER_SHADOW);
		_pressStartText.scrollFactor.set(0, 0);
		FlxSpriteUtil.flicker(_pressStartText, 0, 0.4, false, true);
		add(_pressStartText);

		_endMenuShown = true;		
	}

	public function addEndGameTimeoutMenu():Void
	{
		_startText1 = new FlxText(FlxG.width/2 - 400, FlxG.height/3 - 150, 800);
		_startText1.alignment = "center";
		_startText1.size = 40;
		_startText1.color =  FlxColor.RED;
		_startText1.text = "HAMMERHEAD SHARKS\nAgainst Humanity";
		_startText1.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText1.scrollFactor.set(0, 0);
		add(_startText1);
		_startText3 = new FlxText(FlxG.width/2 - 400, FlxG.height/2 - 50, 800);
		_startText3.alignment = "center";
		_startText3.size = 27;
		_startText3.color =  FlxColor.RED;
		_startText3.text = "Your score is "+Reg.score;
		_startText3.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText3.scrollFactor.set(0, 0);
		add(_startText3);
		_startText2 = new FlxText(FlxG.width/2 - 400, FlxG.height/2, 800);
		_startText2.alignment = "center";
		_startText2.size = 35;
		_startText2.color =  FlxColor.WHITE;
		_startText2.text = "HAMMERHEAD SHARKS will be waiting for their LEADER ... \nBENEATH THE SURFACE";
		_startText2.setBorderStyle(FlxText.BORDER_SHADOW);
		_startText2.scrollFactor.set(0, 0);
		add(_startText2);
		_pressStartText = new FlxText(FlxG.width/2 - 400, FlxG.height/3 + 275, 800);
		_pressStartText.alignment = "center";
		_pressStartText.size = 35;
		_pressStartText.color =  FlxColor.RED;
		_pressStartText.text = "Click here";
		_pressStartText.setBorderStyle(FlxText.BORDER_SHADOW);
		_pressStartText.scrollFactor.set(0, 0);
		FlxSpriteUtil.flicker(_pressStartText, 0, 0.4, false, true);
		add(_pressStartText);

		_endMenuShown = true;		
	}

	private function fadeOutAndInstructions(TweenInstance: FlxTween):Void
	{
		addInstructionsMenu();
	}

	public function freeSharksEndGame():Void
	{
		if (Reg.gameStateVar == 2) {
			saveHighScore();
			// Change Game State
			Reg.gameStateVar = 3;

			_timerText.visible = false;
			_scoreLabelText.visible = false;
			Reg.scoreValueText.visible = false;

			FlxG.log.add("freeSharksEndGame");
			addEndGameFreeSharksMenu();
		}
	}

	public function timeoutEndGame():Void
	{
		saveHighScore();
		// Change Game State
		Reg.gameStateVar = 3;

		_timerText.visible = false;
		_scoreLabelText.visible = false;
		Reg.scoreValueText.visible = false;

		FlxG.log.add("timeoutEndGame");
		addEndGameTimeoutMenu();
	}

	public function saveHighScore():Void
	{
		if (Reg.highScore < Reg.score) {
			FlxG.log.add("High Score saved");
			Reg.saveState.data.highScore = Reg.score;
			Reg.saveState.flush();
			_highScoreValueText.text = ""+Reg.score;
		}
	}

	public function startCountdown(Count:Int):Void
	{
		FlxG.log.add("startCountdown");
		_timerText = new FlxText(5, 0, FlxG.width);
		_timerText.alignment = "center";
		_timerText.size = 40;
		_timerText.color = FlxColor.WHITE;
		_timerText.text = ""+Count;
		_timerText.setBorderStyle(FlxText.BORDER_SHADOW);
		_timerText.scrollFactor.set(0, 0);
		add(_timerText);

		_countdownTimer = FlxTimer.start(1, updateTimer, 31);
	}

	public function updateCountdown(Count:Int):Void
	{
		_timerText.text = ""+Count;
	}

	public function updateTimer(CurrentTimer:FlxTimer):Void
	{
		if (Reg.gameStateVar == 2) {
			if (_countdownValue == 0) {
				timeoutEndGame();
			}
			else {
				_countdownValue -= 1;
				_timerText.text = ""+_countdownValue;
			}
		}
	}
}