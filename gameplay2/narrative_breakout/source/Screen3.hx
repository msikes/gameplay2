package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;

class Screen3 extends FlxState {
	
	var t:FlxText;
	var t2:FlxText;
	var bgImage:FlxSprite;
	
	override public function create(): Void {
		bgImage = new FlxSprite(0, 0, "assets/bg_2.png");
		add(bgImage);
		t = new FlxText(0, 150, 640, "Trainer ran out of Pokeballs!");
		t.size = 40;
		t.color = 0xff000000;
		t.alignment = "center";
		add(t);
		
		t2 = new FlxText(0, 300, 640, "Press SPACE to restart!");
		t2.size = 20;
		t2.color = 0xff000000;
		t2.alignment = "center";
		add(t2);
		super.create();
	}
	
	override public function update():Void {
		
		if (FlxG.keys.SPACE == true) {
			FlxG.resetGame();
		}
		
		super.update();
	}
	
}