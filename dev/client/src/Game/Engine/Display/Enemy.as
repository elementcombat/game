package Game.Engine.Display 
{
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Enemy extends SpritesheetObject
	{
		
		public function Enemy() 
		{
			
		}
		
		public function moveDown():void 
		{
			y += .5;
		}
		
		public function kill():void 
		{
			destroy();
		}
		
	}

}