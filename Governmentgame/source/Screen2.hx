package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;
import org.flixel.FlxGroup;

class Screen2 extends FlxState {

	public var bullets:FlxGroup;
	public var enemyBullets:FlxGroup;
	var enemies:FlxGroup;
	var player:Player;
	var numberOfEnemies:Int;
	var bgImage:FlxSprite;
	
	// Function called when screen is created. Generally used to set things up
	override public function create():Void {
		bgImage = new FlxSprite(0, 0, "assets/bg.png");
		add(bgImage);
		
		bullets = new FlxGroup();
		add(bullets);
		
		enemyBullets = new FlxGroup();
		add(enemyBullets);
		
		numberOfEnemies = 15;
		enemies = new FlxGroup();
		for (i in 0...numberOfEnemies) {
			enemies.add(new Enemy(i * 100, 0));
		}
		for (i in 0...numberOfEnemies) {
			enemies.add(new Enemy(i * 100, 100));
		}
		for (i in 0...numberOfEnemies) {
			enemies.add(new Enemy(i * 100, 200));
		}
		/*enemies.add(new Enemy(200, 300));
		enemies.add(new Enemy(100, 20));
		enemies.add(new Enemy(20, 3));*/
		add(enemies);
		
		player = new Player();
		add(player);
		
		// Do everything else that FlxState normally does when created
		super.create();
	}
	
	// Function called every frame
	override public function update():Void {
		FlxG.overlap(enemies, bullets, hitEnemy);
		FlxG.overlap(player, enemyBullets, hitPlayer);
		FlxG.overlap(bullets, enemyBullets, hitBullet);
		// Do everything which FlxState normally does every frame
		if (numberOfEnemies<1) {
			FlxG.switchState(new Screen4());
		}
		super.update();
	}
	
	public function hitBullet(bullet:Bullet, eBullet:EnemyBullet): Void {
		bullet.kill();
		eBullet.kill();
		FlxG.play("Explosion");
	}
	
	public function hitEnemy(enemy:Enemy, bullet:Bullet):Void {
		enemy.kill();
		bullet.kill();
		numberOfEnemies--;
		FlxG.play("Explosion");
	}	
		public function hitPlayer(p:Player, eBullet:EnemyBullet):Void {
		p.kill();
		eBullet.kill();
		FlxG.switchState(new Screen3());
		FlxG.play("Explosion");
	}	
}