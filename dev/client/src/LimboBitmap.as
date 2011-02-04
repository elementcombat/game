package  
{
	import flash.display.Bitmap;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class LimboBitmap extends DBitmap
	{
		[Embed(source='../asset/bitmap/limbo.jpg')]
		private var _asset				:Class;
		
		public function LimboBitmap() 
		{
			super(Bitmap(new _asset()).bitmapData);
			
			trace(this, width, height);
		}
		
	}

}