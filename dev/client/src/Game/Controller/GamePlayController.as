package Game.Controller 
{
	import Game.Engine.GameSystem;
	import Game.View.GamePlayView;
	import Geleca.Controller.Controller;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GamePlayController extends Controller
	{
		private var _view					:GamePlayView;
		private var _game					:GameSystem;
		
		public function GamePlayController(view:GamePlayView) 
		{
			_view = view;
		}
		
		override protected function setup():void 
		{
			super.setup();
			
			_game = GameSystem.getInstance();
		}
		
		override protected function initialize():void 
		{
			super.initialize();
			
			_game.startup(_view.viewport);
		}
		
	}

}