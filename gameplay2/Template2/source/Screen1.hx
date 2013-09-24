package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;

class Screen1 extends FlxState {

	var t:FlxText;
	//var justPressed:Bool;
	var score:Int;
	var p1:Player1;
	var p2:Player2;

	// Function called when screen is created. Generally used to set things up
	override public function create():Void {
		// Set a background color
		FlxG.bgColor = 0xffaa0000;
		
		t = new FlxText(0, 216, 640, "0");
		t.size = 48;
		t.color = 0xff000000;
		t.alignment = "center";
		
		add(t);
		
		score = 0;
		
		//justPressed = false;
		
		p1 = new Player1();
		add(p1);
		
		p2 = new Player2();
		add(p2);
		
		// Do everything else that FlxState normally does when created
		super.create();
	}
	
	// Function called every frame
	override public function update():Void {
		
		if (FlxG.overlap(p1, p2) == true) {
			p1.x = p1.startX;
			p1.y = p1.startY;
			p2.x = p2.startX;
			p2.y = p2.startY;
			
			score++;
		}
		
		/*justPressed = FlxG.mouse.justPressed();
		
		if (justPressed == true) {
			presses++;
		}*/
		
		t.text = Std.string(score);
		// Do everything which FlxState normally does every frame
		super.update();
	}	
}