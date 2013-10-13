package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Bullet extends FlxSprite {

	public var startX:Float;
	public var startY:Float;
	

	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		loadGraphic("assets/bulletsplayer.png", true, false, 13, 26); // Loop, don't mirror, width, height
		addAnimation("loop",[0,1,2,3]); // Play frames 0-3 at 30 fps
		//addAnimation("loop",[0,1,2,3], 10); // Play frames at 10 fps
		play("loop"); // Automatically loop
		
	}

	override public function update():Void {
		velocity.y = -400;

		if (y < -height){
			kill();
		}
		
		super.update();
	}
}