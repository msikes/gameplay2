package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;

class Screen1 extends FlxState {

	var t:FlxText;
	var t2:FlxText;
	var t3:FlxText;
	//var justPressed:Bool;
	var p1_win:Bool;
	var p2_win:Bool;
	var p1_score:Int;
	var p2_score:Int;
	var p1:Player1;
	var g1:Player1_Goal;
	var p2:Player2;
	var g2:Player2_Goal;
	var counter:Float;

	// Function called when screen is created. Generally used to set things up
	override public function create():Void {
		// Set a background color
		FlxG.bgColor = 0xff000000;
		
		p1_win = false;
		p2_win = false;
		
		t = new FlxText(-300, 0, 640, "0");
		t.size = 48;
		t.color = 0xffD76B00;
		t.alignment = "center";
		
		t2 = new FlxText(300, 0, 640, "0");
		t2.size = 48;
		t2.color = 0xffC400C4;
		t2.alignment = "center";
		
		add(t);
		add(t2);
		
		p1_score = 0;
		p2_score = 0;
		
	
		
		//justPressed = false;
		
		g1 = new Player1_Goal();
		add(g1);
		
		p1 = new Player1();
		add(p1);
		
		g2 = new Player2_Goal();
		add(g2);
		
		p2 = new Player2();
		add(p2);
		
		counter = 20;
		
		// Do everything else that FlxState normally does when created
		super.create();
	}
	
	// Function called every frame
	override public function update():Void {
		
		/*counter -= FlxG.elapsed;
		
		if (counter < 0 == true) {
			counter = 21;
		}*/
		
		if (p1_score > 9) {
			p1_score = 0;
			p2_score = 0;
			p1_win = true;
		}
		
		if (p2_score > 9) {
			p1_score = 0;
			p2_score = 0;
			p2_win = true;
		}
		
		
		if (FlxG.overlap(p1, g2) == true) {
			p1.x = Std.random(320);
			g1.x = p1.x;
			p1.y = Std.random(240);
			g1.y = p1.y;
			p2.x = Std.random(320) + 270;
			g2.x = p2.x;
			p2.y = Std.random(240) + 190;
			g2.y = p2.y;
			
			p1_score++;
		}
		
		if (FlxG.overlap(p2, g1) == true) {
			p1.x = Std.random(220) + 100;
			g1.x = p1.x;
			p1.y = Std.random(140) + 100;
			g1.y = p1.y;
			p2.x = Std.random(320) + 320;
			g2.x = p2.x;
			p2.y = Std.random(240) + 240;
			g2.y = p2.y;
			
			p2_score++;
		}
		
		p1_win = false;
		p2_win = false;
		
		
		/*justPressed = FlxG.mouse.justPressed();
		
		if (justPressed == true) {
			presses++;
		}*/
		
		//t.text = Std.string(Std.int(counter));
		t.text = Std.string(p1_score);
		t2.text = Std.string(p2_score);
		
		// Do everything which FlxState normally does every frame
		
		super.update();
		
	}	
}