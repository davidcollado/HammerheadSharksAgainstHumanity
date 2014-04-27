package;

import flixel.FlxG;
import flixel.group.FlxTypedGroup;
import flixel.util.FlxRandom;
import flixel.util.FlxSpriteUtil;
import flixel.util.FlxPoint;
import flixel.util.FlxColor;
import flixel.text.FlxText;

class ScoreTextManager extends FlxTypedGroup<ScoreText>
{
	public function new(MaxElements:Int) 
	{
		super();

		maxSize = MaxElements;

		for (i in 0...maxSize) {
			var _oneText:ScoreText = new ScoreText(0, 0, 400);
			_oneText.exists = false;
			_oneText.alignment = "center";
			_oneText.size = 40;
			_oneText.color = FlxColor.WHITE;
			_oneText.setBorderStyle(FlxText.BORDER_SHADOW);
			_oneText.scrollFactor.set(0, 0);
			add(_oneText);
		}
	}

	public function spawnText(X:Float, Y:Float, Points:Int):Void
	{
		if (getFirstAvailable() != null) {
			FlxG.log.add("SpawnText");
			var currentText:ScoreText = getFirstAvailable();

			currentText.x = X - FlxG.camera.scroll.x - 200;
			currentText.y = Y - FlxG.camera.scroll.y;
			FlxG.log.add("SpawnText x = "+currentText.x+" y = "+currentText.y);
			currentText.text = ""+Points;
			currentText.exists = true;
			currentText.alive = true;

			currentText.runTextTo(Std.int(Reg.scoreValueText.x + 600), Std.int(Reg.scoreValueText.y));	
		}
	}

}