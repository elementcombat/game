package ElementCombat.Game.View 
{
	import ElementCombat.Domain.Facade;
	import Geleca.Util.StatsMonitor;
	import Geleca.View.Loading.AssetLoaderItem;
	import Geleca.View.Loading.FlashConfigLoaderItem;
	import Geleca.View.View;
	import Geleca.View.ViewSwitcher;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	[SWF(frameRate="30", width="480", height="320", backgroundColor="#000000")]
	public class MainView extends ViewSwitcher
	{
		private var _facade					:Facade = Facade.getInstance();
		
		public function MainView() 
		{
			super(LoaderScreen, ViewSwitcher.LOAD_HIDE_SHOW);
			
			this.initializeView();
		}
		
		override protected function setup():void 
		{
			
			
			super.setup();
		}
		
		override protected function initialize():void 
		{
			super.initialize();
			
			if(_facade.config.getAppKey("debug") == "true")
				addChild(new StatsMonitor());
		}
		
	}

}