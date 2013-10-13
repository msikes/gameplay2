// Basic start screen

package;

import org.flixel.FlxG;
import org.flixel.FlxState;
import org.flixel.FlxText;

class Screen3 extends FlxState {

	var t:FlxText;

	override public function create():Void {
		t = new FlxText(20, 200, 400, "Loser!");
		t.size = 30;
		t.alignment = "center";
		add(t);
		super.create();
	}
	
	override public function update():Void {
		if(FlxG.keys.SPACE == true){
			FlxG.switchState(new Screen1());
		}
		super.update();
	}	
}

// add timer and score count of how many times you hit the dragon before you died