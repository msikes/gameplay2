// Basic enemy

package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Enemy extends FlxSprite {
	
	public var moveY:Bool;
	
	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		makeGraphic(60, 60, 0xff00ff00);
		moveY = false;
	}

	override public function update():Void {
		super.update();
		if (moveY == true) {
		y += 80;
		moveY = false;
		
		}
	}
}