package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.util.FlxPoint;

class Enemy3 extends FlxSprite {

	public var life:Int;
	var bulletTimer:Float;
	var currentState:PlayState;

	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		loadGraphic("assets/enemy.png", true, false, 870, 218);
		
		addAnimation("good",[10],15);
		addAnimation("fair",[11],15);
		addAnimation("poor", [13], 15);
		addAnimation("dead", [14], 15);
		currentState = cast(FlxG.state, PlayState);
		life = 3;
		bulletTimer = 4;
	}

	// Player1 does this every frame
	override public function update():Void {
		if(life == 3){
			play("good");
		}
		else if(life == 2){
			play("fair");
		}
		else if(life == 1){
			play("poor");
		}
		else{
			play("dead");
		}

		bulletTimer -= FlxG.elapsed;

		if (bulletTimer < 0) {
			if (life > 0){
			currentState.enemyBullets.add(new EnemyBullet(x+285, y+height, currentState.enemyBulletSpeedX));
			bulletTimer = 4; }
			if (life == 0) {
				
			}
		}

		super.update();
	}
}