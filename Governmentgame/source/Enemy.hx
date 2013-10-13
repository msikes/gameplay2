package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Enemy extends FlxSprite {
	
	var bulletTimer:Float;
	
	public function new(startX:Int, startY:Int):Void {
		
		super(startX, startY, "assets/enemy.png");
		bulletTimer = (FlxG.random() * 2) + 2;
		
	}
	
	
	override public function update():Void {
		
		bulletTimer -= FlxG.elapsed;
		
		velocity.x = 0;
		
		if (FlxG.keys.LEFT == true) {
			velocity.x = -150;
		}
		if (FlxG.keys.RIGHT == true) {
			velocity.x = 150;
		}
		
		if (bulletTimer < 0) {
			cast(FlxG.state, Screen2).enemyBullets.add(new EnemyBullet(x + 20, y + 20));
			bulletTimer = (FlxG.random() * 2) + 2;
		}
		super.update();
		
	}
	
}