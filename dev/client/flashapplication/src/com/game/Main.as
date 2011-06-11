package com.game 
{
	import com.game.engine.GameSystem;
	import com.game.engine.ViewPort;
	import com.geleca.as3.debugger.GLog;
	import com.geleca.as3.util.PlayerUtil;
	import com.geleca.as3.util.StatsMonitor;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.system.Capabilities;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	[SWF(frameRate="55", width="800",  height="600")]
	public class Main extends Sprite 
	{
		private var _viewport		:ViewPort = new ViewPort(800, 600);
		
		public function Main() 
		{
			stage.align 		= StageAlign.TOP_LEFT;
			stage.scaleMode 	= StageScaleMode.NO_SCALE;
			
			addChild(_viewport);
			addChild(new StatsMonitor());
			
			GameSystem.getInstance().startup(_viewport);
		}
		
	}

}