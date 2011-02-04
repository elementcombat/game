package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import Geleca.Util.StatsMonitor;
	
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	[SWF(frameRate="30", backgroundColor="#000000")]
	public class Main extends Sprite 
	{
		private var _canvas				:Canvas;
		private var _model				:Model;
		private var _key				:KeyBoardUtil;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			_key = new KeyBoardUtil(stage);
			
			addChild(new StatsMonitor());
			
			_canvas = new Canvas();
			_model = new Model();
			
			addChild(_canvas);
			
			addEventListener(Event.ENTER_FRAME, enter_frame);
		}
		
		private function enter_frame(e:Event):void 
		{
			if (_key.isKeyDown(Keyboard.W))
				ViewObject(_model.objects[0]).y -= 3;
				
			if (_key.isKeyDown(Keyboard.S))
				ViewObject(_model.objects[0]).y += 3;
				
			if (_key.isKeyDown(Keyboard.A))
				ViewObject(_model.objects[0]).x -= 3;
				
			if (_key.isKeyDown(Keyboard.D))
				ViewObject(_model.objects[0]).x +=3;
			
			//_model.update();
			_canvas.render(_model);
		}
		
	}
	
}