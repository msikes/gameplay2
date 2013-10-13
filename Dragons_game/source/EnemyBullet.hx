package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class EnemyBullet extends FlxSprite {

	public var startX:Float;
	public var startY:Float;
	public var speedX:Float;

	public function new(startX:Float, startY:Float, startSpeed:Float):Void {
		super(startX, startY);
		loadGraphic("assets/bullets.png", true, false, 26, 52); // Loop, don't mirror, width, height
		addAnimation("loop",[0,1], 5); // Play frames 0-3 at 30 fps
		play("loop"); // Automatically loop
		speedX = startSpeed;
	}

	override public function update():Void {
		velocity.y = speedX;

		if (y > FlxG.height){
			kill();
		}
		
		super.update();
	}
}