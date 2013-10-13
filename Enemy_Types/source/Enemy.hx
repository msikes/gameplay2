// Basic enemy

package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Enemy extends FlxSprite {
	
	public var points:Int; //how much this is worth
	
	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
	}

	override public function update():Void {
		super.update();
	}
}