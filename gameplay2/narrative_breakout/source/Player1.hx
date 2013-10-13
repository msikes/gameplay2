package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Player1 extends FlxSprite {
	
	public function new():Void {
		super(FlxG.width /2 - width/2, FlxG.height - 85, "assets/player_1.png");
	}
	
	override public function update(): Void {
		
		velocity.x = 0;
		
		if ((FlxG.keys.LEFT == true) || (FlxG.keys.A == true)) {
			velocity.x = -300;
		}
		
		if ((FlxG.keys.RIGHT == true) || (FlxG.keys.D == true)) {
			velocity.x = 300;
		}
		
		if (x < 0) {
			x = 0;
		}
		
		if (x > FlxG.width - width) {
			x = FlxG.width - width;
		}
		
		super.update();
	}
}