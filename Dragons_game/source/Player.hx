package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Player extends FlxSprite {

	var currentState:PlayState;
	public var life:Int;
	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		loadGraphic("assets/dragonsheet.png", true, false, 246, 122); // TRUE indicates that it is an animation. FALSE indicates not to allow reversing facing direction. Cell width, cell height
		addAnimation("idle_good", [0, 1, 2, 3, 4, 3, 2, 1, 0, 0], 10, true);
		addAnimation("left_good", [5, 6, 7, 8], 10, false);
		addAnimation("right_good", [9, 10, 11, 12], 10, false);
		addAnimation("idle_fair", [12, 13, 14, 15, 16, 17, 16, 15, 14, 13, 12, 12, 12], 10, true);
		addAnimation("left_fair", [18, 19, 20, 21], 10, false);
		addAnimation("right_fair", [22, 23, 24 ,25], 10, false);
		addAnimation("idle_poor", [26, 27, 28, 29, 30, 29, 28, 27, 26, 26], 10, true);
		addAnimation("left_poor", [31, 32, 33, 34], 10, false);
		addAnimation("right_poor", [35, 36, 37, 38], 10, false);

		currentState = cast(FlxG.state, PlayState);
		life = 3;
	}

	override public function update():Void {
		super.update();

		velocity.x = 0;

		// Keyboard input
		if (FlxG.keys.LEFT == true){
			velocity.x = -300;
			if(life == 3){
				play("left_good");
			}
			else if(life == 2){
				play("left_fair");
			}
			else if(life == 1){
				play("left_poor");
			}
		} 
		else if (FlxG.keys.RIGHT == true){
			velocity.x = 300;
			if(life == 3){
				play("right_good");
			}
			else if(life == 2){
				play("right_fair");
			}
			else if(life == 1){
				play("right_poor");
			}
		}
		else {
			if(life == 3){
				play("idle_good");
			}
			else if(life == 2){
				play("idle_fair");
			}
			else if(life == 1){
				play("idle_poor");
			}
		}

		if(life == 0){
			kill();
			FlxG.switchState(new Screen3());
		}

		if(FlxG.keys.justPressed("SPACE") == true){
			currentState.bullets.add(new Bullet(x+9, y-20));
		}

		// Restrict movement
		if (x < 0){
			x = 0;
		}
		if (x > FlxG.width-width){
			x = FlxG.width-width;
		}
	}
}