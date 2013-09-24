package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Block extends FlxSprite {
	
	public function new(startX:Int, startY:Int):Void {
		
		super(startX, startY, "assets/pikachu.png");
	}
	
	override public function update():Void {
		
		super.update();
	}
	
	
}