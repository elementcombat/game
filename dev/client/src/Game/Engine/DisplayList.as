package Game.Engine 
{
	import Game.Engine.Display.GameDisplayObject;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class DisplayList
	{
		private var _children	:Array = [];	
		
		public function DisplayList() 
		{
			
		}
		
		public function addChild(child:GameDisplayObject):void 
		{
			_children[_children.length] = child;
		}
		
		public function removeChild(child:GameDisplayObject):void 
		{
			_children.splice(_children.indexOf(child), 1);
		}
		
		public function get numChildren():uint { return _children.length; }
		
		public function get children():Array { return _children; }
		
	}

}