package Game.Engine.Display 
{
	import flash.display.Bitmap;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Ship extends GameDisplayObject
	{
		[Embed(source='../../../../asset/bitmap/ship.png')]
		private var _asset				:Class;
		
		public function Ship() 
		{
			this.data 	= Bitmap(new _asset()).bitmapData;
			this.width 	= data.width;
			this.height = data.height;
		}
		
		public function moveRight():void 
		{
			this.x += 25;
		}
		
		public function moveLeft():void 
		{
			this.x -= 25;
		}
		
	}

}