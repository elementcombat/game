package com.game.util 
{
	import com.game.engine.GameDisplayObject;
	import flash.geom.Rectangle;
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
		
		public static function isOutOfBoundsUpDown(obj:GameDisplayObject, bounds:Rectangle):Boolean 
		{
			return obj.y < bounds.y || obj.y > bounds.height + bounds.y - obj.height;
		}
		
		public static function isOutOfBoundsLeftRight(obj:GameDisplayObject, bounds:Rectangle):Boolean 
		{
			return obj.x < bounds.x || obj.x > (bounds.x + bounds.width);
		}
	}

}