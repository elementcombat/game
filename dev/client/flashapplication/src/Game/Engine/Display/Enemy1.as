package Game.Engine.Display 
{
	import flash.display.Bitmap;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Enemy1 extends Enemy
	{
		[Embed(source='../../../../asset/bitmap/enemy1_animated.png')]
		private var _asset						:Class;
		
		public function Enemy1() 
		{
			
		}
		
		override public function create():void 
		{
			super.create();
			
			spritesheet(Bitmap(new _asset()).bitmapData, 22, 16);
		}
		
		override public function animate(count:uint):void 
		{
			if (count % 20 == 0)
				currentFrame ++;
		}
		
	}

}