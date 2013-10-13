package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;
import org.flixel.util.FlxTimer;

class Screen3 extends FlxState {
	
	var timer:FlxTimer;
	var bgImage:FlxSprite;

	// Function called when screen is created. Generally used to set things up
	override public function create():Void {
		bgImage = new FlxSprite (0, 0, "assets/lose.png");
		add(bgImage);
		
		
		timer = new FlxTimer();
		timer.start(3);
		
		super.create();
	}
	
	// Function called every frame
	override public function update():Void {
		// Do everything which FlxState normally does every frame
		if (timer.finished == true && FlxG.keys.any() == true) {
			FlxG.switchState(new Screen1());
		}
		
		FlxG.log(timer.timeLeft);
		super.update();
	}	
}