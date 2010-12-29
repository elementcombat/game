package ElementCombat.Game.View 
{
	import ElementCombat.Domain.Facade;
	import ElementCombat.Game.Controller.GameScreenController;
	import Geleca.View.View;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameScreen extends View
	{
		protected var controller			:GameScreenController;
		protected var facade				:Facade;
		
		public function GameScreen(controller:GameScreenController) 
		{
			this.controller 	= controller;
			this.facade 		= Facade.getInstance();
		}
		
		override protected function initialize():void 
		{
			super.initialize();
			
			controller.initializeController();
		}
		
		override public function destroy():void 
		{
			super.destroy();
			
			controller.destroy();
			controller = null;
		}
		
	}

}