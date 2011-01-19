package  Hype.View
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import hype.extended.behavior.FixedVibration;
	import hype.extended.behavior.MouseFollowEase;
	import hype.extended.color.ColorPool;
	import hype.extended.layout.ShapeLayout;
	import hype.framework.core.ObjectPool;
	import hype.framework.display.BitmapCanvas;
	import Hype.Shell.Asset.CircleSpriteAsset;
	import Hype.Shell.Asset.SimbionteSpriteAsset;
	
	/**
	 * ...
	 * @author Satsui - Pablo Stofel
	 */
	
	public class Particles extends Sprite
	{
		public var sp_simbionte					:SimbionteSpriteAsset = new SimbionteSpriteAsset();
		
		private var _clipContainer				:Sprite			= new Sprite();
		
		private var _objectPool					:ObjectPool;
		private var _colorPool					:ColorPool = new ColorPool();
		//private var _shapeLayout				:ShapeLayout;
		
		public function Particles() 
		{		
			run();
		}
		
		private function run():void 
		{
			_colorPool.addColor(0xFFFFFF, 3);
			_colorPool.addColor(0xF7F7F7, 3);
			_colorPool.addColor(0xECECEC, 3);
			_colorPool.addColor(0xCCCCCC, 3);
			_colorPool.addColor(0x999999, 3);
			_colorPool.addColor(0x666666, 3);
			
			_colorPool.addColor(0xFF3300);
			_colorPool.addColor(0xFF6600);
			
			addChild(_clipContainer);
			//_clipContainer.addChild(sp_simbionte);
			
			//_shapeLayout = new ShapeLayout(sp_simbionte);
			_objectPool = new ObjectPool(CircleSpriteAsset, 1000);
			
			_objectPool.onRequestObject = objectPoolRequest;
			_objectPool.requestAll();
		}
		
		public function objectPoolRequest(clip:Sprite):void 
		{
			clip.x = Math.random() * 320;
			clip.y = Math.random() * 320;
			clip.scaleX = clip.scaleY = ( Math.random() * .5 ) + 0.25;
			
			//_shapeLayout.applyLayout(clip);
			_colorPool.colorChildren(clip);
			
			//Config FixedVibration on the Hype FrameWork
			/*var xVib:FixedVibration = new FixedVibration(clip, "x", .6, .05, -5, 5, true);
			var yVib:FixedVibration = new FixedVibration(clip, "y", .6, .05, -5, 5, true);
			var rVib:FixedVibration = new FixedVibration(clip, "rotation", .9, .05, 0, 360,true);
			
			xVib.start();
			yVib.start();
			rVib.start();*/
			
			_clipContainer.addChild(clip);
		}
	}
}