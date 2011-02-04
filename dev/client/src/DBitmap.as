package  
{
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class DBitmap extends ViewObject
	{
		
		public function DBitmap(data:BitmapData) 
		{
			_data = data;
			
			//this.x = 50;
			//this.y = 50;
			
			this.width = data.width;
			this.height = data.height;
		}
		
		override protected function render():void 
		{
			
		}
		
	}

}