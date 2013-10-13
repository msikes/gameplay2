package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Player extends FlxSprite {
	
	var bulletTimer:Float;
	
	public function new():Void {
		
		super(FlxG.width / 2, FlxG.height - 101, "assets/player.png");
		bulletTimer = 1;
		
	}
	
	
	override public function update():Void {
		
		super.update();
		
		velocity.x = 0;
		
		if (FlxG.keys.A == true) {
			velocity.x = -300;
		}
		if (FlxG.keys.D == true) {
			velocity.x = 300;
		}
		
		bulletTimer -= FlxG.elapsed;
		
		if (FlxG.keys.justPressed("SPACE") == true && bulletTimer < 1) {
			cast(FlxG.state, Screen2).bullets.add(new Bullet(x + 20, y - 20));
			FlxG.play("Laser");
			bulletTimer = 1;
		}
	}
	
}