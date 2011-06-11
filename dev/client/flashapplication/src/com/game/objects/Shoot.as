package com.game.objects 
{
	import com.game.engine.GameDisplayObject;
	import com.geleca.as3.util.ContainerUtil;
	
	import flash.display.Bitmap;
	import flash.geom.Matrix;
	import flash.geom.Point;

	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class Shoot extends GameDisplayObject
	{
		[Embed(source='../../../../asset/bitmap/shoot.png')]
		private var _asset						:Class;
		
		private var _direction					:Point;
		
		public function Shoot() 
		{
			
		}
		
		public function move():void
		{
			/*var yDistance:Number = stageRef.mouseY - y;
			var xDistance:Number = stageRef.mouseX - x;*/
			
			var radian:Number = Math.atan2(_direction.y, _direction.x);
			x += Math.cos(radian) * 8;
			y += Math.sin(radian) * 8;
		}
		
		public function moveUp():void 
		{
			y -= 5;
		}
		
		public function moveDown():void 
		{
			y += 5;
		}
		
		public function set direction(value:Point):void
		{
			_direction = value;
		}
		
		/* INTERFACE com.geleca.as3.core.IDisposable */
		
		override public function create():void 
		{
			super.create();
			
			var bitmap:Bitmap = new _asset() as  Bitmap;
			bitmap.smoothing = true;
			addChild(bitmap);
			
			bitmap.x -= 2;
			bitmap.y -= 2;
			
			cacheAsBitmap = true;
		}
		
		override public function dispose():void 
		{
			super.dispose();
			
			ContainerUtil.removeAllChilds(this);
		}
		
		public function kill():void 
		{
			destroy();
		}

		
	}

}