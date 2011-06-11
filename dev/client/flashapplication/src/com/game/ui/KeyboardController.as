package com.game.ui 
{
	import com.game.util.KeypressUtil;
	import com.game.util.MouseUtil;
	
	import flash.display.Stage;
	import flash.ui.Keyboard;

	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class KeyboardController implements IPlayerController
	{
		private var _stage						:Stage;
		private var _keypress					:KeypressUtil;
		
		private var _keyLeft					:uint = 65;
		private var _keyRight					:uint = 68;
		private var _keyUp						:uint = 87;
		private var _keyDown					:uint = 83;
		
		private var _keyFire					:uint = 32;
		
		private var _mouse						:MouseUtil;
		
		public function KeyboardController(stage:Stage) 
		{
			_stage 		= stage;
			_keypress 	= new KeypressUtil(_stage);
			
			_mouse 		= new MouseUtil(stage);
		}
		
		/* INTERFACE Game.Engine.UI.IPlayerController */
		
		public function left():Boolean
		{
			return _keypress.isDown(_keyLeft);
		}
		
		public function right():Boolean
		{
			return _keypress.isDown(_keyRight);
		}
		
		public function up():Boolean
		{
			return _keypress.isDown(_keyUp);
		}
		
		public function down():Boolean
		{
			return _keypress.isDown(_keyDown);
		}
		
		public function fire():Boolean
		{
			//return _keypress.isDown(_keyFire);
			return _mouse.isDown();
		}
		
	}

}