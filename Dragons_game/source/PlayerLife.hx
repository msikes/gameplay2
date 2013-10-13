package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class PlayerLife extends FlxSprite{
	public function new(startX:Float, startY:Float):Void {
		startY = FlxG.height - 50;
		super(startX, startY, "assets/life_icon.png");
	}

	override public function update():Void {
		super.update();
	}
	
}