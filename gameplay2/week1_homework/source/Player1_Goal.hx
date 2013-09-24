package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Player1_Goal extends FlxSprite {
	
	public var startX: Int;
	public var startY: Int;
	
	
	public function new() {
		
		startX =  20;
		startY = 220;
		
		super(startX, startY);
		
		makeGraphic(20, 30, 0xffD76B00);
		//loadGraphic("assets/player1.png", false, true, 113, 126);
		
	}
	
	override public function update():Void {
		
		super.update();
		
	}
	
	
}