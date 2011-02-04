package Game.Engine
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import Game.Engine.Display.AnimatedObject;
	import Game.Engine.Display.GameDisplayObject;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class ViewPort extends Bitmap
	{
		private var _width				:int;
		private var _height				:int
		private var _background			:uint;
		private var _bounds				:Rectangle;
		
		private var _count				:uint = 0;
		
		public function ViewPort(width:int, height:int, background:uint) 
		{
			_width 			= width;
			_height 		= height;
			_background 	= background;
			
			_bounds			= new Rectangle(0, 0, _width, _height);
			
			super(new BitmapData(width, height, false, background));
		}
		
		public function render(list:DisplayList):void 
		{
			_count ++;
			
			bitmapData.fillRect(new Rectangle(0, 0, _width, _height), _background);
			
			for each (var obj:GameDisplayObject in list.children) 
			{
				if (obj is AnimatedObject)
					AnimatedObject(obj).animate(_count);
					
				bitmapData.copyPixels(obj.data, new Rectangle(0, 0, obj.width, obj.height), new Point(obj.x, obj.y), null, new Point(), true);
			}
		}
		
		public function get bounds():Rectangle 
		{
			return _bounds;
		}
		
	}

}