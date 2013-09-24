package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Player2 extends FlxSprite {
	
	public var startX:Int;
	public var startY:Int;
	
	public function new() {
		startX = 595;
		startY = 220;
		
		super(startX, startY);
		
		makeGraphic(10, 20, 0xffff00ff);
		
	}
	
	override public function update():Void {
		velocity.x = 0;
		velocity.y = 0;
		
		if (FlxG.keys.LEFT == true) {
			velocity.x -= 230;
		}
		
		if (FlxG.keys.RIGHT == true) {
			velocity.x += 230;
		}
		
		if (FlxG.keys.UP == true) {
			velocity.y -= 230;
		}
		
		if (FlxG.keys.DOWN == true) {
			velocity.y += 230;
		}
		
		super.update();
		
	}
	
}