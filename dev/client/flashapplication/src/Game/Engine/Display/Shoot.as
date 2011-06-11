package Game.Engine.Display 
{
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Shoot extends GameDisplayObject
	{
		public function Shoot() 
		{
			
		}
		
		override public function create():void 
		{
			super.create();
			
			this.data = new BitmapData(2, 8, false, 0xffffffff);
			this.width = 2;
			this.height = 8;
		}
		
		override public function dispose():void 
		{
			super.dispose();
			
			this.data = null;
		}
		
		public function moveUp():void 
		{
			y -= 5;
		}
		
		public function moveDown():void 
		{
			y += 5;
		}
		
		public function kill():void 
		{
			destroy();
		}
	}

}