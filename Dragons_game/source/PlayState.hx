package;

import org.flixel.FlxG;
import org.flixel.FlxState;
import org.flixel.FlxGroup;
import org.flixel.FlxSprite;
import org.flixel.addons.FlxBackdrop;
import org.flixel.util.FlxPoint;

class PlayState extends FlxState {

	var player:Player;
	var enemy:Enemy;
	var enemy2:Enemy2;
	var enemy3:Enemy3;
	var playerLife:FlxGroup;
	var clouds:FlxGroup;
	var bg:FlxSprite;


	var totalClouds: Int;

	public var bullets:FlxGroup;
	public var enemyBullets:FlxGroup;
	public var enemyBulletSpeedX:Float;

	override public function create():Void {
		bg = new FlxSprite();
		bg.loadGraphic("assets/bg.png", false, false, 870, 21750);
		add(new FlxBackdrop(bg, 2, 0, true, false));
		
		bullets = new FlxGroup();
		add(bullets);

		enemyBullets = new FlxGroup();
		add(enemyBullets);

		clouds = new FlxGroup();
		add(clouds);

		//clouds.add(new Cloud());

		player = new Player(FlxG.width/2-20, FlxG.height-140);
		add(player);

		enemy = new Enemy(0, 0);
		add(enemy);
		enemy.width = 500;
		enemy.height = 200;
		
		enemy2 = new Enemy2(0, 0);
		add(enemy2);
		enemy2.width = 900;
		enemy2.height = 180;
		
		enemy3 = new Enemy3(0, 0);
		add(enemy3);
		enemy3.width = 400;
		enemy3.height = 220;

		playerLife = new FlxGroup();
		for(i in 0...player.life){
			playerLife.add(new PlayerLife(i*35, 4));
		}
		add(playerLife);

		totalClouds = 12;
		clouds = new FlxGroup();
		for (x in 0...4) {
			for(y in 0...3){
				clouds.add(new Cloud(100 + (x*80), 240 + (y*80))); 
			}
		}
		add(clouds);

		enemyBulletSpeedX = 200;

		super.create();
	}
	
	override public function update():Void {
		FlxG.overlap(bullets, enemy, hitEnemy);
		FlxG.overlap(bullets, enemy2, hitEnemy2);
		FlxG.overlap(bullets, enemy3, hitEnemy3);
		FlxG.overlap(bullets, clouds, hitCloud);
		FlxG.overlap(enemyBullets, player, hitPlayer);
		
		super.update();
	}	

	public function hitEnemy(b:Bullet, e:Enemy){
		enemyBulletSpeedX += 20;
		//trace(enemyBulletSpeedX);
		enemyBullets.setAll("speedX", enemyBulletSpeedX);
		b.kill();
		e.life--;
	}

	public function hitEnemy2(b:Bullet, e2:Enemy2){
		enemyBulletSpeedX += 20;
		//trace(enemyBulletSpeedX);
		enemyBullets.setAll("speedX", enemyBulletSpeedX);
		b.kill();
		e2.life--;
	}


	public function hitEnemy3(b:Bullet, e3:Enemy3){
		enemyBulletSpeedX += 20;
		//trace(enemyBulletSpeedX);
		enemyBullets.setAll("speedX", enemyBulletSpeedX);
		b.kill();
		e3.life--;
	}

	public function hitCloud(b:Bullet, c:Cloud){
		b.kill();
		c.speedX += 10;
	}


	public function hitPlayer(eb:EnemyBullet, p:Player){
		playerLife.remove(playerLife.members[player.life-1]);
		eb.kill();
		p.life--;
	}

}