package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;

class Screen1 extends FlxState {

	var bgImage:FlxSprite;
	
	// Function called when screen is created. Generally used to set things up
	override public function create():Void {
		bgImage = new FlxSprite (0, 0, "assets/intro.png");
		add(bgImage);
		
		// Do everything else that FlxState normally does when created
		super.create();
	}
	
	// Function called every frame
	override public function update():Void {
		// Do everything which FlxState normally does every frame
		
		if (FlxG.keys.SPACE == true) {
			FlxG.switchState(new Screen2());
		}
		
		super.update();
	}	
}