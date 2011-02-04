package com.game.engine 
{
	import flash.geom.Rectangle;
	import Game.Engine.Action.AddEnemyAction;
	import Game.Engine.Display.Enemy;
	import Game.Engine.Display.Enemy1;
	import Game.Engine.Util.GameDisplayObjectUtil;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class EnemyLoop extends Loop
	{
		private var _bounds				:Rectangle;
		
		public function EnemyLoop() 
		{
			_bounds = game.viewport.bounds;
		}
		
		override public function update(count:uint):void 
		{
			super.update(count);
			
			//Initialize
			if (game.context.enemies.length == 0)
				new AddEnemyAction(Enemy1, 32).run();
			
			for each (var enemy:Enemy in game.context.enemies.items) 
			{
				enemy.moveDown();
				if (GameDisplayObjectUtil.isOutOfBounds(enemy, _bounds))
					enemy.destroy();
			}
		}
		
	}

}