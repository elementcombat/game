package Game.Engine 
{
	import Game.Engine.Display.Ship;
	import Game.Engine.Loop.EnemyLoop;
	import Game.Engine.Loop.GarbageCollector;
	import Game.Engine.Loop.ShipLoop;
	import Game.Engine.UI.IPlayerController;
	import Geleca.Collection.List;
	import Geleca.Core.Context;
	import Geleca.Core.ObjectFactory;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameContext extends Context
	{
		
		public function GameContext() 
		{
			this.add("factory", new ObjectFactory());
			this.add("ship", new Ship());
			this.add("enemies", new List());
			
			this.add("shoots", 			new List());
			this.add("enemyShoots", 	new List());
			
			//Loops
			this.add("shipLoop", 			new ShipLoop());
			this.add("enemyLoop", 			new EnemyLoop());
			this.add("garbageCollector", 	new GarbageCollector());
		}
		
		public function get factory()			:ObjectFactory 		{ return this.getByName("factory"); }
		
		public function get ship()				:Ship 				{ return this.getByName("ship"); }
		public function get enemies()			:List 				{ return this.getByName("enemies"); }
		public function get shoots()			:List 				{ return this.getByName("shoots"); }
		public function get enemyShoots()		:List 				{ return this.getByName("enemyShoots"); }
		
		public function get playerController()	:IPlayerController 	{ return this.getByName("playerController"); }
		
		//Loops
		public function get shipLoop()			:ShipLoop 			{ return this.getByName("shipLoop"); }
		public function get enemyLoop()			:EnemyLoop 			{ return this.getByName("enemyLoop"); }
		public function get garbageCollector()	:GarbageCollector 	{ return this.getByName("garbageCollector"); }
	}

}