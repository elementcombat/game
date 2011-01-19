package 
{
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import Geleca.Util.StatsMonitor;
	import Geleca.View.View;
	import hype.extended.behavior.MouseFollowSpring;
	import hype.framework.display.BitmapCanvas;
	import Hype.View.BlurRythm;
	import Hype.View.Particles;
	
	/**
	 * ...
	 * @author Satsui - Pablo Stofel
	 */
	
	[SWF(width=1002, height=550, backgroundColor="#CCCCCC", frameRate=40)]
	public class Main extends Sprite 
	{
		private var _bitmapCanvas					:BitmapCanvas;
		
		private var _particles						:Particles = new Particles();
		private var _blurRhythm						:BlurRythm = new BlurRythm();
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			_bitmapCanvas = new BitmapCanvas(stage.stageWidth, stage.stageHeight);
			
			_bitmapCanvas.startCapture(_particles, false);
			//_bitmapCanvas.startCapture(_blurRhythm, false);
			
			addChild(_bitmapCanvas);
			
			addChild(new StatsMonitor());
		}
	}
}