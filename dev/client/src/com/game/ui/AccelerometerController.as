package com.game.ui 
{
	import flash.events.AccelerometerEvent;
	import flash.sensors.Accelerometer;
	/**
	 * ...
	 * @author Cristiano Caldas
	 */
	public class AccelerometerController implements IPlayerController 
	{
		private var _acc							:Accelerometer;
		
		private var _accX							:Number = 0;
		private var _accY							:Number = 0;
		private var _accZ							:Number = 0;
		
		public function AccelerometerController() 
		{
			_acc = new Accelerometer();
			_acc.addEventListener(AccelerometerEvent.UPDATE, acc_update);
		}
		
		private function acc_update(e:AccelerometerEvent):void 
		{
			_accX = e.accelerationX;
			_accY = e.accelerationY;
			_accZ = e.accelerationZ;
		}
		
		/* INTERFACE com.game.ui.IPlayerController */
		
		public function left():Boolean 
		{
			return _accX > 0.3;
		}
		
		public function right():Boolean 
		{
			return _accX < -0.3;
		}
		
		public function up():Boolean 
		{
			return _accY < 0;
		}
		
		public function down():Boolean 
		{
			return _accY > 0;
		}
		
		public function fire():Boolean 
		{
			return false;
		}
		
	}

}