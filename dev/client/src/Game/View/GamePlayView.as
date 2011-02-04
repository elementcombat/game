package Game.View 
{
	import Game.Controller.GamePlayController;
	import Game.Engine.ViewPort;
	import Geleca.Util.StatsMonitor;
	import Geleca.View.View;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	
	[SWF(width=480, height=320, frameRate=30)]
	public class GamePlayView extends View
	{
		public var viewport				:ViewPort;
		private var _controller			:GamePlayController;
		
		public function GamePlayView() 
		{
			this.initializeView();
		}
		
		override protected function setup():void 
		{
			super.setup();
			
			viewport = new ViewPort(480, 320, 0xff000000);
			addChild(viewport);
			
			_controller = new GamePlayController(this);
		}
		
		override protected function initialize():void 
		{
			super.initialize();
			
			_controller.initializeController();
			
			addChild(new StatsMonitor());
		}
		
	}

}