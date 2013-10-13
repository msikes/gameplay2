package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class EnemyBullet extends FlxSprite {
	
	public function new(startX:Float, startY:Float):Void {
		
		super(startX, startY, "assets/enemybullet.png");
	}
	
	
	override public function update():Void {
		
		velocity.y = 100;
		if (y > FlxG.height) {
			kill();
		}
		super.update();
		

	}
	
}