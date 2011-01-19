/*
Dan Gries
www.flashandmath.com
dan@flashandmath.com
*/


//An AbstractParticle is not a display object, but rather just a collection
//of attributes for a particle.

package com.flashandmath.dg.objects {
	import flash.display.Sprite;
	import flash.geom.*;
	
	public class AbstractParticle {				
		public var size:Number;
		public var color:uint;
		
		public var pos:Point;
		public var vel:Point;
		public var accel:Point;
		public var airResistanceFactor:Number;
		public var windEffect:Number;
		
		public var tier:int;
		
		//The following attributes are for the purposes of creating a
		//linked list of AbstractParticle instances.
		public var next:AbstractParticle;
		public var prev:AbstractParticle;
		
		public function AbstractParticle(x0=0,y0=0) {
			pos = new Point(x0,y0);
			accel = new Point();
			vel = new Point();
			size = 1;
			color = 0xFFFFFF;
			airResistanceFactor = 0.03;
			windEffect = 1;
			tier = 0;
		}
	}
}
			
		