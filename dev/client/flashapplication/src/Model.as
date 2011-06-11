package  
{
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Model 
	{
		private var _objects	:Array = [];
		
		public function Model()
		{
			var obj:ViewObject;
			
			_objects.push(new ShipBitmap());
			
			for (var i:int = 0; i < 400; i++) 
			{
				obj = new Enemy1();
				obj.x = Math.random() * 500;
				obj.y = Math.random() * 500;
				
				/*obj.width = Math.random() * 200;
				obj.height = 10;*/
				
				obj.color = Math.random() * 0xffffffff;
				
				_objects.push(obj);
			}
		}
		
		public function get objects():Array 
		{
			return _objects;
		}
		
		public function update():void 
		{
			for each (var item:ViewObject in _objects) 
			{
				item.x ++;
				item.y ++;
			}
		}
		
	}

}