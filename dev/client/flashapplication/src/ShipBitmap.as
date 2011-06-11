package  
{
	import flash.display.Bitmap;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class ShipBitmap extends DBitmap
	{
		[Embed(source='../asset/bitmap/ship.png')]
		private var _asset				:Class;
		
		public function ShipBitmap() 
		{
			super(Bitmap(new _asset()).bitmapData);
		}
		
	}

}