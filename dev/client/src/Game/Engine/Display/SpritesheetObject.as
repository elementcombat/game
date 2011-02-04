package Game.Engine.Display 
{
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class SpritesheetObject extends AnimatedObject
	{
		private var _tmpData				:BitmapData
		
		private var _tileWidth				:int = 0;
		private var _tileHeight				:int = 0;
		private var _rows					:int = 0;
		
		private var _rect					:Rectangle;
		
		public function SpritesheetObject() 
		{
			
		}
		
		protected function spritesheet(data:BitmapData, width:int, height:int):void 
		{
			_tmpData = data;
			
			_tileWidth 	= width;
			_tileHeight = height;
			_rows 		= int(data.width / width);
			_rect 		= new Rectangle(0, 0, width, height);
			
			this.data 		= new BitmapData(width, height);
			this.width 		= width;
			this.height 	= height;
			
			this.totalFrames = int(data.width / width);
			this.currentFrame = 1;
		}
		
		override public function set currentFrame(value:int):void 
		{
			super.currentFrame = value;
			
			drawTile(value);
		}
		
		private function drawTile(tile:int):void 
		{
			_rect.x = (tile -1) * _tileWidth;
			//_rect.x = int((tile % _rows)) * _tileWidth;
			//_rect.y = int((tile / _rows)) * _tileHeight;
			
			//trace(this, "drawTile", tile, _rect);
			
			this.data.copyPixels(_tmpData, _rect, new Point());
		}
		
	}

}