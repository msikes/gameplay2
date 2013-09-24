package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;

class Screen1 extends FlxState {

	var ball:Ball;
	var ball2:Ball;
	var ball3:Ball;
	var p1:Player1;
	var block:Block;
	var block2:Block;
	var block3:Block;
	var zubat:Zubat;
	var zubat2:Zubat;
	var zubat3:Zubat;
	var bgImage:FlxSprite;
	var ballRed:PokeballRed;
	var ballRed2:PokeballRed;
	var ballRed3:PokeballRed;
	var ballGray:PokeballGray;
	var ballGray2:PokeballGray;
	var ballGray3:PokeballGray;
	
	
	override public function create():Void {
		bgImage = new FlxSprite(0, 0, "assets/bg.png");
		add(bgImage);
		
		ball = new Ball();
		add(ball);
		
		ball2 = new Ball();
		
		ball3 = new Ball();
		
		p1 = new Player1();
		add(p1);
		
		block = new Block(300,100);
		add(block);
		
		block2 = new Block(100, 200);
		add(block2);
		
		block3 = new Block(440, 300);
		add(block3);
		
		zubat = new Zubat(450,50);
		add(zubat);
		
		zubat2 = new Zubat(150,50);
		add(zubat2);
		
		zubat3 = new Zubat(200, 300);
		add(zubat3);
		
		ballGray = new PokeballGray(450, 20);
		add(ballGray);
		
		ballGray2 = new PokeballGray(500, 20);
		add(ballGray2);
		
		ballGray3 = new PokeballGray(550, 20);
		add(ballGray3);
		
		ballRed = new PokeballRed(450, 20);
		add(ballRed);
		
		ballRed2 = new PokeballRed(500, 20);
		add(ballRed2);
		
		ballRed3 = new PokeballRed(550, 20);
		add(ballRed3);
		
		super.create();
	}
	

	override public function update():Void {
		
		if ((FlxG.overlap(p1, ball) == true) || (FlxG.overlap(p1, ball2) == true) || (FlxG.overlap(p1, ball3) == true)) {
			ball.directionY = -1;
			ball.directionX = -1;
			ball.speedX += 10;
			ball.speedY += 10;
		}
		if (ball.done == true) {
			ballRed.kill();
			ball.kill();
			//ball.reset(FlxG.width/2, FlxG.height/2);
			add(ball2);
			//FlxG.switchState(new Screen2());
		}
		
		if (ball2.done == true) {
			ballRed2.kill();
			ball2.kill();
			add(ball3);
		}
		
		if (ball3.done == true) {
			ballRed3.kill();
			ball3.kill();
			FlxG.switchState(new Screen3());
		}
		
		if ((FlxG.overlap(block, ball) == true) || (FlxG.overlap(block, ball2) == true) || (FlxG.overlap(block, ball3) == true)) {
			ball.directionY = -1;
			ball.directionX = -1;
			ball.speedX += 10;
			ball.speedY += 10;
			block.kill();
		}
		if ((FlxG.overlap(block2, ball) == true) || (FlxG.overlap(block2, ball2) == true) || (FlxG.overlap(block2,ball3) == true)) {
			ball.directionY = -1;
			ball.directionX = -1;
			ball.speedX += 10;
			ball.speedY += 10;
			block2.kill();
		}
			if ((FlxG.overlap(block3, ball) == true) || (FlxG.overlap(block3, ball2) == true) || (FlxG.overlap(block3,ball3) == true)) {
			ball.directionY = -1;
			ball.directionX = -1;
			ball.speedX += 10;
			ball.speedY += 10;
			block3.kill();
		}
		
	if ((FlxG.overlap(zubat, ball) == true) || (FlxG.overlap(zubat, ball2) == true) || (FlxG.overlap(zubat, ball3) == true)) {
			ball.directionX = -1;
			ball.directionY = -1;
			ball.speedX += 10;
			ball.speedY += 10;
			zubat.kill();
		}
		if ((FlxG.overlap(zubat2, ball) == true) || (FlxG.overlap(zubat2, ball2) == true) || (FlxG.overlap(zubat2, ball3) == true)) {
			ball.directionX = -1;
			ball.directionY = -1;
			ball.speedX += 10;
			ball.speedY += 10;
			zubat2.kill();
		}
			if ((FlxG.overlap(zubat3, ball) == true) || (FlxG.overlap(zubat3, ball2) == true) || (FlxG.overlap(zubat3, ball3) == true)) {
			ball.directionX = -1;
			ball.directionY = -1;
			ball.speedX += 10;
			ball.speedY += 10;
			zubat3.kill();
		}
		
		if ((block.alive == false) && (block2.alive == false) && (block3.alive == false) && (zubat.alive == false) && (zubat2.alive == false) && (zubat3.alive==false)) {
			FlxG.switchState(new Screen2());
			
		}
		
		if (FlxG.keys.G == true) {
			FlxG.switchState(new Screen2());
		}
		
		super.update();
	}	
}