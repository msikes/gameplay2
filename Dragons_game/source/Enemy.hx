package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Enemy extends FlxSprite {

	public var life:Int;
	var bulletTimer:Float;
	var currentState:PlayState;

	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		loadGraphic("assets/enemy.png", true, false, 870, 218);
		
		addAnimation("good",[0],15);
		addAnimation("fair",[1],15);
		addAnimation("poor", [3], 15);
		addAnimation("dead", [4], 15);
		currentState = cast(FlxG.state, PlayState);
		life = 3;
		bulletTimer = 2;
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
			if(life > 0){
			currentState.enemyBullets.add(new EnemyBullet(x+420, y+height, currentState.enemyBulletSpeedX));
			bulletTimer = 2; }
			if (life < 1) {
				
			}
		}

		super.update();
	}
}