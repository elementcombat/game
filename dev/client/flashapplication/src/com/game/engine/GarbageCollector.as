package com.game.engine 
{
	import com.game.objects.Shoot;
	import flash.system.System;
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
			/*for each (var enemy:Enemy in game.context.enemies.items) 
			{
				if (enemy.destroyed)
					game.removeEnemy(enemy);
			}*/
			
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