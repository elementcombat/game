package Game.Engine.UI 
{
	
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public interface IPlayerController 
	{
		function left()		:Boolean;
		function right()	:Boolean;
		function up()		:Boolean;
		function down()		:Boolean;
		function fire()		:Boolean;
	}
	
}