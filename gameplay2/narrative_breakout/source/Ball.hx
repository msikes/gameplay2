package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Ball extends FlxSprite {
	
	public var directionX:Int;
	public var directionY:Int;
	
	public var speedX:Float;
	public var speedY:Float;
	
	public var done:Bool;
	
	public function new():Void{
		super(FlxG.width / 2, FlxG.height / 2, "assets/ball.png");
		
		directionX = Std.int(FlxG.random() * 2);
		if (directionX == 0) {
			directionX = -1;
		}
		
		directionY = Std.int(FlxG.random() * 2);
		if (directionY == 0) {
			directionY = -1;
		}
		
		speedX = 250;
		speedY = (FlxG.random() * 600) - 150;
		
		done = false;
	}
	
	override public function update():Void {
		
		/*if (x > FlxG.width) {
			x = 0;
		}
		
		if (x < -width) {
			x = FlxG.width;
		}
		
		if (y > FlxG.height) {
			y = 0;
		}
		
		if (y < -height) {
			y = FlxG.height;

		}*/
		
		if (y > FlxG.height - height) {
			done = true;
		}
		
		if (x < 0) {
			directionX *= -1;
		}
		
		if (x > FlxG.width - width) {
			directionX *= -1;
		}
		
		if (y < 0) {
			directionY *= -1;
		}
		
		
		velocity.x = speedX * directionX;
		velocity.y = speedY * directionY;
		super.update();
	}
	
}