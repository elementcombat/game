package com.game 
{
	import com.game.engine.GameSystem;
	import com.game.engine.ViewPort;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	[SWF(frameRate=30, width=640,  height=960)]
	public class Main extends Sprite 
	{
		private var _viewport		:ViewPort = new ViewPort(640, 960);
		
		public function Main() 
		{
			addChild(_viewport);
			GameSystem.getInstance().startup(_viewport);
		}
		
	}

}