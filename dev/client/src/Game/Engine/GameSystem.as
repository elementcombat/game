package Game.Engine 
{
	import flash.events.Event;
	import Game.Engine.Display.Enemy;
	import Game.Engine.Display.Shoot;
	import Game.Engine.Loop.EnemyLoop;
	import Game.Engine.UI.KeyboardController;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameSystem
	{
		private static var _instance	:GameSystem = null;
		
		private var _viewport		:ViewPort;
		private var _displaylist	:DisplayList;
		private var _context		:GameContext;
		private var _gameloop		:GameLoop
		
        public function GameSystem(enforcer:SingletonEnforcer)
        {
            
        }
		
		public static function getInstance():GameSystem
		{
			if (_instance == null)
				_instance = new GameSystem(new SingletonEnforcer());
			
			return _instance;
		}
		
		public function startup(viewport:ViewPort):void
		{
			_viewport 		= viewport;
			
			_displaylist 	= new DisplayList();
			_context 		= new GameContext();
			_gameloop		= new GameLoop();
			
			_gameloop.addEventListener(Event.RENDER, gameloop_render);
			
			//Register Controller
			_context.add("playerController", new KeyboardController(_viewport.stage));
			
			//Register Loops
			_gameloop.add(_context.shipLoop);
			_gameloop.add(_context.enemyLoop);
			
			_gameloop.start();
		}
		
		public function addPlayerShoot():void 
		{
			var shoot:Shoot = _context.factory.create(Shoot);
			shoot.y = _context.ship.y;
			shoot.x = _context.ship.x + ((_context.ship.width - shoot.width) * .5);
			
			_context.shoots.add(shoot);
			_displaylist.addChild(shoot);
		}
		
		public function removePlayerShoot(shoot:Shoot):void 
		{
			_displaylist.removeChild(shoot);
			_context.shoots.remove(shoot);
			_context.factory.dispose(shoot);
		}
		
		public function addEnemy(enemy:Enemy):void 
		{
			_displaylist.addChild(enemy);
			_context.enemies.add(enemy);
		}
		
		public function removeEnemy(enemy:Enemy):void 
		{
			_displaylist.removeChild(enemy);
			_context.enemies.remove(enemy);
			_context.factory.dispose(enemy);
		}
		
		public function get viewport()		:ViewPort 		{ return _viewport; }
		public function get displaylist()	:DisplayList 	{ return _displaylist; }
		public function get context()		:GameContext 	{ return _context; }
		public function get gameloop()		:GameLoop 		{ return _gameloop; }
		
		private function gameloop_render(e:Event):void 
		{
			_viewport.render(_displaylist);
		}
	}

}

class SingletonEnforcer {}