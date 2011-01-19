package 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import Hype.Shell.Asset.CircleSpriteAsset;
	
	/**
	 * ...
	 * @author Ramon Moreira
	 */
	
	public class Main extends Sprite
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			var circle:CircleSpriteAsset = new CircleSpriteAsset();
			addChild(circle);
			
			circle.rotationX = 60;
		}
	}
	
}