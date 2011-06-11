package com.game.util
{
	import flash.display.Stage;
	import flash.events.MouseEvent;

	public class MouseUtil
	{
		private var _down	:Boolean;
		private var _stage	:Stage;
		
		public function MouseUtil(stage:Stage)
		{
			_stage = stage;
			
			_stage.addEventListener(MouseEvent.MOUSE_DOWN, stage_mouseDown);
			_stage.addEventListener(MouseEvent.MOUSE_UP, stage_mouseUp);
		}
		
		private function stage_mouseDown(e:MouseEvent):void
		{
			// TODO Auto-generated method stub
			
			_down = true;
		}
		
		public function isDown():Boolean
		{
			return _down;
		}
		
		private function stage_mouseUp(e:MouseEvent):void
		{
			// TODO Auto-generated method stub
			
			_down = false;
		}
	}
}