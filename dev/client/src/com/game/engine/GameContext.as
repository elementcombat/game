package com.game.engine
{
	import com.game.objects.Ship;
	import com.game.ui.IPlayerController;
	import com.geleca.as3.core.Context;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameContext extends Context
	{
		
		public function GameContext() 
		{
			this.add("ship", new Ship());
			
			//Loops
			this.add("shipLoop", 			new ShipLoop());
			
			/*this.add("factory", new ObjectFactory());
			
			this.add("enemies", new List());
			
			this.add("shoots", 			new List());
			this.add("enemyShoots", 	new List());
			
			
			this.add("enemyLoop", 			new EnemyLoop());
			this.add("garbageCollector", 	new GarbageCollector());*/
		}
		
		/*public function get factory()			:ObjectFactory 		{ return this.getByName("factory"); }
		
		
		public function get enemies()			:List 				{ return this.getByName("enemies"); }
		public function get shoots()			:List 				{ return this.getByName("shoots"); }
		public function get enemyShoots()		:List 				{ return this.getByName("enemyShoots"); }
		
		
		
		//Loops
		
		public function get enemyLoop()			:EnemyLoop 			{ return this.getByName("enemyLoop"); }
		public function get garbageCollector()	:GarbageCollector 	{ return this.getByName("garbageCollector"); }*/
		
		public function get shipLoop()			:ShipLoop 				{ return this.getByName("shipLoop"); }
		public function get ship() 				:Ship 					{ return this.getByName("ship"); }
		public function get playerController()	:IPlayerController 		{ return this.getByName("playerController"); }
	}

}