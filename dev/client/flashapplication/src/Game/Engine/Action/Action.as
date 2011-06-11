package Game.Engine.Action 
{
	import Game.Engine.GameSystem;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Action implements IAction
	{
		protected var game					:GameSystem;
		
		public function Action() 
		{
			
		}
		
		/* INTERFACE Game.Engine.Action.IAction */
		
		public final function run():void 
		{
			game = GameSystem.getInstance();
			execute();
			game = null;
		}
		
		protected function execute():void 
		{
			
		}
		
	}

}