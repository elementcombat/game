package  
{
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class KeyBoardUtil 
	{
		private var _stage		:Stage;
		
		private var _keys		:Dictionary = new Dictionary();
		
		public function KeyBoardUtil(stage:Stage) 
		{
			_stage = stage;
			
			_stage.addEventListener(KeyboardEvent.KEY_DOWN, 	stage_keyDown);
			_stage.addEventListener(KeyboardEvent.KEY_UP, 		stage_keyUp);
		}
		
		private function stage_keyDown(e:KeyboardEvent):void 
		{
			_keys[e.keyCode] = true;
		}
		
		private function stage_keyUp(e:KeyboardEvent):void 
		{
			delete _keys[e.keyCode];
		}
		
		public function isKeyDown(key:uint):Boolean
		{
			return _keys[key] != undefined;
		}
		
	}

}