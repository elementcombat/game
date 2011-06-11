package com.game.engine 
{
	import com.geleca.as3.core.IDestroyable;
	import com.geleca.as3.core.IDisposable;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameDisplayObject extends Sprite implements IDestroyable, IDisposable
	{
		private var _destroyed					:Boolean = false;
		
		public function GameDisplayObject() 
		{
			
		}
		
		/* INTERFACE com.geleca.as3.core.IDestroyable */
		
		public function destroy():void 
		{
			_destroyed = true;
		}
		
		/* INTERFACE com.geleca.as3.core.IDisposable */
		
		public function create():void 
		{
			_destroyed = false;
		}
		
		public function dispose():void 
		{
			_destroyed = true;
		}
		
		public function get destroyed():Boolean 
		{
			return _destroyed;
		}
		
	}

}