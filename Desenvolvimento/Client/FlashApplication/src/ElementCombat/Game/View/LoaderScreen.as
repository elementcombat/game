package ElementCombat.Game.View 
{
	import ElementCombat.Game.Controller.LoaderScreenController;
	import Geleca.View.Loading.AssetLoaderItem;
	import Geleca.View.Loading.FlashConfigLoaderItem;
	import Geleca.View.Loading.LoaderInfoLoaderItem;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class LoaderScreen extends GameScreen
	{
		
		public function LoaderScreen() 
		{
			super(new LoaderScreenController(this));
		}
		
		override protected function setup():void 
		{
			super.setup();
			
			addLoaderItem(new FlashConfigLoaderItem("config", "flash-config.xml", _facade.config));
			addLoaderItem(new LoaderInfoLoaderItem(this.loaderInfo));
			
		}
		
	}

}