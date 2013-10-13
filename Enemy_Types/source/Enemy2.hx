// Basic enemy

package ;

class Enemy2 extends Enemy {
	
	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		makeGraphic(40, 40, 0xff0000ff);
		points = 5;
	}

	override public function update():Void {
		super.update();
	}
}