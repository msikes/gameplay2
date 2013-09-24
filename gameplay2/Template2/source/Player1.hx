package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Player1 extends FlxSprite {
	
	public var startX:Int;
	public var startY:Int;
	
	public function new() {
		startX = 20;
		startY = 20;
		
		super(startX, startY);
		
		makeGraphic(10, 20, 0xff00ff00);
		
	}
	
	override public function update():Void {
		velocity.x = 0;
		velocity.y = 0;
		
		if (FlxG.keys.A == true) {
			velocity.x -= 130;
		}
		
		if (FlxG.keys.D == true) {
			velocity.x += 130;
		}
		
		if (FlxG.keys.W == true) {
			velocity.y -= 130;
		}
		
		if (FlxG.keys.S == true) {
			velocity.y += 130;
		}
		
		super.update();
		
	}
	
}