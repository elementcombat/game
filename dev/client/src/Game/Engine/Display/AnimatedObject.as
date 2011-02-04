package Game.Engine.Display 
{
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class AnimatedObject extends GameDisplayObject
	{
		private var _totalFrames			:int = 1;
		private var _currentFrame			:int = 1;
		
		public function AnimatedObject() 
		{
			
		}
		
		public function animate(count:uint):void 
		{
			
		}
		
		public function get currentFrame():int { return _currentFrame; }
		
		public function set currentFrame(value:int):void 
		{
			if (value > _totalFrames)
			{
				this.currentFrame = 1;
				return;
			}
				
			_currentFrame = value;
		}
		
		public function get totalFrames():int { return _totalFrames; }
		
		public function set totalFrames(value:int):void 
		{
			_totalFrames = value;
		}
		
	}

}