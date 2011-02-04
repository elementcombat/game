package Game.Engine.Loop 
{
	import Game.Engine.GameSystem;
	import Game.Engine.ILoopable;
	import Geleca.Core.IDestroyable;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Loop implements ILoopable, IDestroyable
	{
		protected var game					:GameSystem;
		
		public function Loop() 
		{
			game = GameSystem.getInstance();
		}
		
		/* INTERFACE Game.Engine.ILoopable */
		
		public function update(count:uint):void
		{
			
		}
		
		/* INTERFACE Geleca.Core.IDestroyable */
		
		public function destroy():void
		{
			game = null;
		}
		
	}

}