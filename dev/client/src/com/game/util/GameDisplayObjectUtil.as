package com.game.util 
{
	import flash.geom.Rectangle;
	import Game.Engine.Display.GameDisplayObject;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameDisplayObjectUtil 
	{
		
		public function GameDisplayObjectUtil() 
		{
			
		}
		
		public static function isOutOfBounds(obj:GameDisplayObject, bounds:Rectangle):Boolean
		{
			return (obj.x < bounds.x || obj.x > (bounds.x + bounds.width) || obj.y < bounds.y || obj.y > bounds.y + (bounds.height - obj.height))
		}
	}

}