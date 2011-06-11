package com.game.ui 
{
	import flash.display.Stage;
	import flash.events.AccelerometerEvent;
	import flash.events.MouseEvent;
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
		
		private var _stage							:Stage;	
		
		private var _mouseDown						:Boolean = false;
		
		public function AccelerometerController(stage:Stage) 
		{
			_stage = stage;
			
			_acc = new Accelerometer();
			_acc.addEventListener(AccelerometerEvent.UPDATE, acc_update);
			
			_stage.addEventListener(MouseEvent.MOUSE_DOWN, 	stage_mouseDown);
			_stage.addEventListener(MouseEvent.MOUSE_UP, 	stage_mouseUp);
		}
		
		private function stage_mouseDown(e:MouseEvent):void 
		{
			_mouseDown = true;
		}
		
		private function stage_mouseUp(e:MouseEvent):void 
		{
			_mouseDown = false;
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
			return _accX > 0.1;
		}
		
		public function right():Boolean 
		{
			return _accX < -0.1;
		}
		
		public function up():Boolean 
		{
			return _accY < 0.1;
		}
		
		public function down():Boolean 
		{
			return _accY > -0.1;
		}
		
		public function fire():Boolean 
		{
			return _mouseDown;
		}
		
	}

}