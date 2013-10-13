package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Cloud extends FlxSprite {

public var directionX:Int;
//public var directionY:Int;

public var speedX:Float;
public var speedY:Float;
public var done:Bool;

public function new(startX:Float, startY:Float):Void{


super(startX, startY);
makeGraphic( 40, 40, 0xff0000ff);

directionX = Std.int(FlxG.random()*2);
if(directionX == 0){
	directionX = -1;
}

FlxG.log(directionX);
speedX = 50;

done = false;

	}

override public function update():Void{

	super.update();

if(x > FlxG.width ){
	directionX *= -1;
}

if(x < 0 ){
	directionX *= -1;
}





	velocity.x = speedX * directionX;

	super.update();

}
}
