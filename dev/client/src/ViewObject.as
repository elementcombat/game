package  
{
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class ViewObject 
	{
		private var _x:Number = 0;
		private var _y:Number = 0;
		
		private var _width:Number = 0;
		private var _height:Number = 0;
		
		private var _color:uint;
		
		protected var _data:BitmapData;
		
		protected var _render	:Boolean = true;
		
		private var _bounds		:Rectangle;
		
		public function ViewObject() 
		{
			_bounds = new Rectangle();
		}
		
		public function hitTest(target:ViewObject):Boolean
		{
			return bounds.intersects(target.bounds);
		}
		
		protected function render():void 
		{
			var bw:int = _width < 1 ? 1 : _width;
			var bh:int = _height < 1 ? 1 : _height;
			
			_data = new BitmapData(bw, bh, true, 0x00000000);
			
			var length:uint = _width * _height * .08;
			
			for (var i:int = 0; i < _width; i++) 
			{
				_data.setPixel32(Math.random() * _width, Math.random() * _height, _color);
				/*_data.setPixel32(i, 0, _color);
				_data.setPixel32(i, 1, _color);
				_data.setPixel32(i, 2, _color);*/
				//_data.setPixel32(i, 20, _color);
			}
			
			/*_data.setPixel32(0, 0, 0x66ff0000);
			_data.setPixel32(1, 0, 0x55ff0000);
			_data.setPixel32(2, 0, 0x44ff0000);
			_data.setPixel32(3, 0, 0x33ff0000);
			_data.setPixel32(4, 0, 0x22ff0000);
			_data.setPixel32(5, 0, 0x11ff0000);
			_data.setPixel32(6, 0, 0xffff0000);*/
			
			_render = false;
			//_render = true;
		}
		
		public function get data():BitmapData 
		{
			if (_render)
				render();
				
			return _data;
		}
		
		public function get height():Number 
		{
			return _height;
		}
		
		public function set height(value:Number):void 
		{
			_height = value;
			
			_render = true;
		}
		
		public function get width():Number 
		{
			return _width;
		}
		
		public function set width(value:Number):void 
		{
			_width = value;
			
			_render = true;
		}
		
		public function get color():uint 
		{
			return _color;
		}
		
		public function set color(value:uint):void 
		{
			_color = value;
			
			_render = true;
		}
		
		public function get y():Number 
		{
			return _y;
		}
		
		public function set y(value:Number):void 
		{
			_y = value;
		}
		
		public function get x():Number 
		{
			return _x;
		}
		
		public function set x(value:Number):void 
		{
			_x = value;
		}
		
		public function get bounds():Rectangle 
		{
			_bounds.x 		= _x;
			_bounds.y 		= _y;
			_bounds.width 	= _width;
			_bounds.height 	= _height
			
			return _bounds;
		}
		
	}

}