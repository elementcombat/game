package Game.Engine.Loop 
{
	import flash.geom.Rectangle;
	import Game.Engine.Display.Enemy;
	import Game.Engine.Display.Ship;
	import Game.Engine.Display.Shoot;
	import Game.Engine.UI.IPlayerController;
	import Game.Engine.Util.GameDisplayObjectUtil;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class ShipLoop extends Loop
	{
		private var _ship			:Ship;
		private var _bounds			:Rectangle;
		private var _controller		:IPlayerController;
		
		public function ShipLoop() 
		{
			
		}
		
		override public function update(count:uint):void 
		{
			super.update(count);
			
			//Initialize
			if (count == 1)
			{
				_ship 		= game.context.ship;
				_bounds		= game.viewport.bounds;
				_controller = game.context.playerController;
				
				game.displaylist.addChild(_ship);
				_ship.y = game.viewport.height - _ship.height;
			}
			
			//Move Left
			if (_controller.left() && _ship.x > 0)
				_ship.moveLeft();
				
			//Move Right
			if (_controller.right() && _ship.x < _bounds.width - _ship.width)
				_ship.moveRight();
				
			//Fire
			if (_controller.fire() && count % 3 == 0 && game.context.shoots.length < 6)
				game.addPlayerShoot();
				
			//Shoots
			for each (var shoot:Shoot in game.context.shoots.items) 
			{
				//Move
				shoot.moveUp();
				
				//Remove
				if (GameDisplayObjectUtil.isOutOfBounds(shoot, _bounds))
					shoot.destroy();
					
				//Collision
				for each (var enemy:Enemy in game.context.enemies.items) 
				{
					if (enemy.hitTest(shoot))
					{
						enemy.kill();
						shoot.kill();
					}
				}
			}
		}
		
	}

}