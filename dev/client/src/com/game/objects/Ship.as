package com.game.objects 
{
	import com.game.engine.GameDisplayObject;
	import flash.display.Bitmap;
	import flash.geom.Matrix;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Ship extends GameDisplayObject
	{
		[Embed(source='../../../../asset/bitmap/spaceship.png')]
		private var _asset					:Class;
		
		public function Ship() 
		{
			var bitmap:Bitmap = new _asset() as  Bitmap;
			bitmap.smoothing = true;
			addChild(bitmap);
			
			cacheAsBitmap = true;
			cacheAsBitmapMatrix = new Matrix();
		}
		
		public function moveRight():void 
		{
			this.x += 5;
		}
		
		public function moveLeft():void 
		{
			this.x -= 5;
		}
		
	}

}