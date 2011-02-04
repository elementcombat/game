package Game.Engine.Loop 
{
	import flash.system.System;
	import Game.Engine.Display.Enemy;
	import Game.Engine.Display.GameDisplayObject;
	import Game.Engine.Display.Shoot;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GarbageCollector extends Loop
	{
		
		public function GarbageCollector() 
		{
			
		}
		
		override public function update(count:uint):void 
		{
			super.update(count);
			
			//Enemies
			for each (var enemy:Enemy in game.context.enemies.items) 
			{
				if (enemy.destroyed)
					game.removeEnemy(enemy);
			}
			
			//Shoots
			for each (var shoot:Shoot in game.context.shoots.items) 
			{
				if (shoot.destroyed)
					game.removePlayerShoot(shoot);
			}
			
			System.gc();
		}
		
	}

}