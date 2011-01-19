package Hype.View 
{
	import flash.display.Sprite;
	import hype.extended.behavior.MouseFollowSpring;
	import Hype.Shell.Asset.CircleSpriteAsset;
	
	/**
	 * ...
	 * @author Satsui - Pablo Stofel
	 */
	public class BlurRythm extends Sprite
	{
		private var _particle				:CircleSpriteAsset = new CircleSpriteAsset();
		
		private var _clipContainer			:Sprite = new Sprite();
		
		public function BlurRythm() 
		{
			run();
		}
		
		private function run():void
		{
			addChild(_clipContainer);
			
			_clipContainer.addChild(_particle);
		}
	}
}