package com.game.engine
{
	import com.game.objects.Ship;
	import com.game.objects.Shoot;
	import com.game.ui.AccelerometerController;
	import com.game.ui.KeyboardController;
	import com.geleca.as3.debugger.GLog;
	import com.geleca.as3.util.OSUtil;
	import com.geleca.as3.util.PlayerUtil;
	
	import flash.events.Event;
	import flash.geom.Point;

	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameSystem
	{
		private static var _instance	:GameSystem = null;
		
		public var viewport				:ViewPort;
		public var context				:GameContext;
		public var gameloop				:GameLoop
		
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
			this.viewport 	= viewport;
			
			context 		= new GameContext();
			gameloop		= new GameLoop();
			
			//_gameloop.addEventListener(Event.RENDER, gameloop_render);
			
			//Register Controller
			//PlayerUtil.isExternal() = Adobe Device Central
			context.add("playerController", new KeyboardController(viewport.stage));
			
			//Register Loops
			gameloop.add(context.shipLoop);
			//_gameloop.add(_context.enemyLoop);
			
			gameloop.start();
			
			//_gameloop.start();
		}
		
		public function addPlayerShoot():void 
		{
			//GLog.log("fire");
			
			var shoot:Shoot = context.factory.create(Shoot);
			shoot.y = context.ship.y;
			//shoot.x = context.ship.x + ((context.ship.width - shoot.width) * .5);
			shoot.x = context.ship.x;
			
			shoot.direction = new Point(viewport.stage.mouseX - context.ship.x, viewport.stage.mouseY - context.ship.y);
			context.shoots.add(shoot);
			viewport.addGameObject(shoot);
		}
		
		public function removePlayerShoot(shoot:Shoot):void 
		{
			viewport.removeGameObject(shoot);
			context.shoots.remove(shoot);
			context.factory.dispose(shoot);
		}
		
		/*
		
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
		}*/
	}

}

class SingletonEnforcer {}