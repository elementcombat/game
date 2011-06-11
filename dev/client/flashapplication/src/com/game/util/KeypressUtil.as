package com.game.util 
{
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class KeypressUtil
	{
		private var _keys			:Dictionary = new Dictionary();
		private var _stage			:Stage;
		
		public function KeypressUtil(stage:Stage) 
		{
			_stage = stage;
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, 	stage_keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, 	stage_keyUp);
		}
		
		public function isDown(keyCode:uint):Boolean 
		{
			return (_keys[keyCode] != undefined || _keys[keyCode] == true)
		}

		private function stage_keyDown(e:KeyboardEvent):void 
		{
			_keys[e.keyCode] = true;
		}

		private function stage_keyUp(e:KeyboardEvent):void 
		{
			delete _keys[e.keyCode];
		}
		
	}

}