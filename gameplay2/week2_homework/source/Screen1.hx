package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;

class Screen1 extends FlxState {

	var ball:Ball;
	var p1:Player1;
	var block:Block;
	var block2:Block;
	var bgImage:FlxSprite;
	
	
	override public function create():Void {
		bgImage = new FlxSprite(0, 0, "assets/bg.png");
		add(bgImage);
		
		ball = new Ball();
		add(ball);
		
		p1 = new Player1();
		add(p1);
		
		block = new Block(300,100);
		add(block);
		
		block2 = new Block(100, 20);
		add(block2);
		
		super.create();
	}
	

	override public function update():Void {
		
		if (FlxG.overlap(p1, ball) == true) {
			ball.directionX = -1;
		}
		if (ball.done == true) {
			FlxG.switchState(new Screen2());
		}
		if (FlxG.overlap(block, ball) == true) {
			block.kill();
		}
		if (FlxG.overlap(block2, ball) == true) {
			block2.kill();
		}
		
		super.update();
	}	
}