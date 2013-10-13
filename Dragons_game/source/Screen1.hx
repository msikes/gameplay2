// Basic start screen

package;

import org.flixel.FlxG;
import org.flixel.FlxState;
import org.flixel.FlxText;

class Screen1 extends FlxState {

	var t:FlxText;

	override public function create():Void {
		t = new FlxText(FlxG.width/2 - 200, 200, 400, "press SPACE to start");
		t.size = 30;
		t.alignment = "center";
		add(t);
		super.create();
	}
	
	override public function update():Void {
		if(FlxG.keys.SPACE == true){
			FlxG.switchState(new PlayState());
		}
		super.update();
	}	
}