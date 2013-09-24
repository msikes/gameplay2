package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Player2_Goal extends FlxSprite {
	
	public var startX: Int;
	public var startY: Int;
	
	
	public function new() {
		
		startX =  595;
		startY = 220;
		
		super(startX, startY);
		
		makeGraphic(20, 30, 0xffC400C4);
		//loadGraphic("assets/player2.png", false, true, 113, 126);
		
	}
	
	override public function update():Void {
		
		super.update();
		
	}
	
	
}