package com.game.engine
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
	public class ViewPort extends Sprite
	{
		private var _width				:Number;
		private var _height				:Number
		private var _background			:uint;
		private var _bounds				:Rectangle;
		
		public function ViewPort(width:Number, height:Number) 
		{
			_width 			= width;
			_height 		= height;
			
			_bounds			= new Rectangle(0, 0, _width, _height);
			
			mouseEnabled 	= mouseChildren = false;
		}
		
		public function addGameObject(obj:GameDisplayObject):void 
		{
			addChild(obj);
		}
		
		public function removeGameObject(obj:GameDisplayObject):void 
		{
			removeChild(obj);
		}
		
		public function get bounds():Rectangle 
		{
			return _bounds;
		}
		
		override public function get width():Number 
		{
			return _width;
		}
		
		override public function set width(value:Number):void 
		{
			_width = value;
		}
		
		override public function get height():Number 
		{
			return _height
		}
		
		override public function set height(value:Number):void 
		{
			_height = value;
		}
		
	}

}