package com.game.objects 
{
	import com.game.engine.GameDisplayObject;
	import com.geleca.as3.debugger.GLog;
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
		
		private var _accX					:Number = 0;
		private var _accY					:Number = 0;
		
		public function Ship() 
		{
			var bitmap:Bitmap = new _asset() as  Bitmap;
			bitmap.smoothing = true;
			addChild(bitmap);
			
			bitmap.x = -(bitmap.width * .5);
			bitmap.y = -(bitmap.height * .5)
			
			cacheAsBitmap = true;
		}
		
		public function moveRight():void 
		{
			_accX += .8;
			
			//trace(this);
			//_dir = 1;
			
			//x += _acc;
		}
		
		public function moveLeft():void 
		{
			_accX -= .8;			
			//x += _acc;
		}
		
		public function moveUp():void 
		{
			_accY -= .8;
		}
		
		public function moveDown():void 
		{
			_accY += .8;
		}
		
		public function update():void 
		{
			if (_accX == 0 && _accY == 0)
				return;
			
			//X
			if (_accX < 0)
				_accX += .4;
				
			if (_accX > 0)
				_accX -= .4;
				
			if (_accX < .1 && _accX > -.1)
				_accX = 0;
			
			//Y
			if (_accY < 0)
				_accY += .4;
				
			if (_accY > 0)
				_accY -= .4;
				
			if (_accY < .1 && _accY > -.1)
				_accY = 0;
			
			x += _accX;
			y += _accY;
			
			//GLog.log(_acc);
		}
		
		public function hitUpDown():void 
		{
			_accY = 0;
		}
		
		public function hitLeftRight():void 
		{
			_accX = 0;
		}
		
	}

}