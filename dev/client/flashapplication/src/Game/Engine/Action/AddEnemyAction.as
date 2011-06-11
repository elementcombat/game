package Game.Engine.Action 
{
	import Game.Engine.Display.Enemy;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class AddEnemyAction extends Action
	{
		private var _type			:Class;
		private var _count			:int;
		
		public function AddEnemyAction(type:Class, count:int) 
		{
			_type 	= type;
			_count 	= count;
		}
		
		override protected function execute():void 
		{
			super.execute();
			
			var enemy		:Enemy = game.context.factory.create(_type);
			var columns		:int = 16;
			var spacing		:int = 4;
			var xInitial	:Number = (game.viewport.width - ((enemy.width + spacing) * columns)) * .5;
			
			for (var i:int = 0; i < _count; i++) 
			{
				enemy = game.context.factory.create(_type);
				
				enemy.x = xInitial + ((enemy.width + spacing)  * (i % columns))
				enemy.y = (enemy.height + spacing) * Math.floor(i / columns);
				
				game.addEnemy(enemy);
			}
			
			_type = null;
		}
		
	}

}