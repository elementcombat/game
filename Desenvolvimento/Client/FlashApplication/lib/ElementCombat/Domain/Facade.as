package ElementCombat.Domain
{
	import Geleca.Configuration.FlashConfig;
    
    public class Facade
    {
        private static var _instance            :Facade = null;
		public var game							:Game = new Game();
		public var config						:FlashConfig = new FlashConfig();
		
        public function Facade(enforcer:SingletonEnforcer)
        {
            
        }
		
		public static function getInstance():Facade
		{
			if (_instance == null)
				_instance = new Facade(new SingletonEnforcer());
			
			return _instance;
		}

    }
}

class SingletonEnforcer {}

