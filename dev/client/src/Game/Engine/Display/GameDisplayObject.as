package Game.Engine.Display 
{
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	import Geleca.Core.IDestroyable;
	import Geleca.Core.IDisposable;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameDisplayObject implements IDisposable, IDestroyable
	{		
		private var _x			:Number = 0;
		private var _y			:Number = 0;
		
		private var _width		:Number = 0;
		private var _height		:Number = 0;
		
		private var _data		:BitmapData;
		
		private var _render		:Boolean = true;
		
		private var _bounds		:Rectangle;
		
		private var _destroyed	:Boolean = false;
		
		public function GameDisplayObject() 
		{
			
		}
		
		public function get data():BitmapData 
		{
			if (render)
			{
				renderObject();
				render = false;
			}
				
			return _data;
		}
		
		public function set data(value:BitmapData):void 
		{
			_data 	= value;
			render 	= true;
		}
		
		protected function renderObject():void 
		{
			
		}
		
		public function hitTest(target:GameDisplayObject):Boolean
		{
			return bounds.intersects(target.bounds);
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
		
		public function get render():Boolean { return _render; }
		
		public function set render(value:Boolean):void 
		{
			_render = value;
		}
		
		public function get destroyed():Boolean 
		{
			return _destroyed;
		}
		
		/* INTERFACE Geleca.Core.IDisposable */
		
		public function create():void
		{
			_x		= 0;
			_y		= 0;
			_width	= 0;
			_height	= 0;
			
			_bounds = new Rectangle();
			_data 	= new BitmapData(1, 1);
			
			_destroyed = false;
		}
		
		public function dispose():void
		{
			_x		= 0;
			_y		= 0;
			_width	= 0;
			_height	= 0;
			
			_data 	= null;
			_bounds = null;
		}
		
		/* INTERFACE Geleca.Core.IDestroyable */
		
		public function destroy():void 
		{
			_destroyed = true;
		}
		
	}

}