package  
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Canvas extends Sprite
	{
		private var _data				:BitmapData;
		private var _bitmap				:Bitmap;
		
		public function Canvas() 
		{
			_data = new BitmapData(500, 500);
			
			_bitmap = new Bitmap(_data);
			_bitmap.smoothing = true;
			
			addChild(_bitmap);
			
			//_bitmap.bitmapData.fillRect(new Rectangle(0, 0, 200, 200), 0xffff0000);
		}
		
		public function render(model:Model):void 
		{
			_data.fillRect(new Rectangle(0, 0, 500, 500), 0xff000000);
			
			var length:uint = model.objects.length;
			var obj:ViewObject;
			
			/*if (ViewObject(model.objects[0]).hitTest(ViewObject(model.objects[1])))
				trace(this, "bateu");*/
				
			for (var i:int = 0; i < length; i++) 
			{
				obj = model.objects[i];
				/*obj.x += 2;
				obj.y += 2;*/
				
				if (i == 1)
				{
					obj.x = 50;
					obj.y = 50;
				}
				//trace(this, obj, obj.render);
				//if(obj.render)
				//{
				//_data.fillRect(new Rectangle(obj.x, obj.y, obj.width, obj.height), obj.color);
				_data.copyPixels(obj.data, new Rectangle(0, 0, obj.width, obj.height), new Point(obj.x, obj.y), null, new Point(), true);
				//_data.setPixels(new Rectangle(0, 0, obj.width, obj.height), obj.data.getPixels(new Rectangle(0, 0, obj.width, obj.height)));
				//_data.
				//}
			}
		}
		
	}

}