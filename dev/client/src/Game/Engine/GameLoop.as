package Game.Engine 
{
	import flash.display.Shape;
	import flash.events.Event;
	import Game.Engine.Loop.GarbageCollector;
	import Geleca.Events.SimpleEventDispatcher;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class GameLoop extends SimpleEventDispatcher
	{
		private var _game		:GameSystem;
		private var _shape		:Shape;
		private var _count		:uint = 0;
		private var _objects	:Array = [];
		private var _garbage	:GarbageCollector;
		
		public function GameLoop() 
		{
			_game		= GameSystem.getInstance();
			_shape 		= new Shape();
			_garbage 	= _game.context.garbageCollector;
		}
		
		public function start():void 
		{
			if (!_shape.hasEventListener(Event.ENTER_FRAME))
				_shape.addEventListener(Event.ENTER_FRAME, shape_enterFrame);
		}
		
		private function shape_enterFrame(e:Event):void 
		{
			update();
		}
		
		public function stop():void 
		{
			_shape.removeEventListener(Event.ENTER_FRAME, shape_enterFrame);
		}
		
		public function add(obj:ILoopable):void 
		{
			_objects[_objects.length] = obj;
		}
		
		public function remove(obj:ILoopable):void 
		{
			_objects.splice(_objects.indexOf(obj), 1);
		}
		
		private function update():void
		{
			_count ++;
			
			for each (var obj:ILoopable in _objects) 
				obj.update(_count);
				
			_garbage.update(_count);
			
			dispatchEvent(new Event(Event.RENDER));
		}
		
		public function get count():uint { return _count; }
		
	}

}