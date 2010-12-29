package ElementCombat.Game.Controller 
{
	import ElementCombat.Domain.Facade;
	import ElementCombat.Domain.Game;
	import ElementCombat.Game.View.GameScreen;
	import Geleca.Controller.Controller;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameScreenController extends Controller
	{
		protected var screen					:GameScreen;
		protected var game						:Game;
		
		public function GameScreenController(screen:GameScreen) 
		{
			this.screen = screen;
		}
		
		override protected function setup():void 
		{
			super.setup();
			
			game = Facade.getInstance().game;
		}
		
		override public function destroy():void 
		{
			super.destroy();
			
			screen 	= null;
			game 	= null;
		}
		
	}

}