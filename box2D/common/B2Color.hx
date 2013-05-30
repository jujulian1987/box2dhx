/*
* Copyright (c) 2006-2007 Erin Catto http://www.gphysics.com
*
* This software is provided 'as-is', without any express or implied
* warranty.  In no event will the authors be held liable for any damages
* arising from the use of this software.
* Permission is granted to anyone to use this software for any purpose,
* including commercial applications, and to alter it and redistribute it
* freely, subject to the following restrictions:
* 1. The origin of this software must not be misrepresented; you must not
* claim that you wrote the original software. If you use this software
* in a product, an acknowledgment in the product documentation would be
* appreciated but is not required.
* 2. Altered source versions must be plainly marked as such, and must not be
* misrepresented as being the original software.
* 3. This notice may not be removed or altered from any source distribution.
*/
package box2D.common;
	
import box2D.common.B2Color;
import box2D.common.B2Settings;
import box2D.common.math.B2Mat22;
import box2D.common.math.B2Math;
import box2D.common.math.B2Sweep;
import box2D.common.math.B2Vec2;
import box2D.common.math.B2XForm;

/// A 2D column vector.
class B2Color
 {
	
	private var _b : Float;
	private var _color :Int;
	private var _g : Float;
	private var _r : Float;
	
	private function set_b(bb:Float):Float 
	{
		_b = Std.int(255 * B2Math.b2Clamp(bb, 0.0, 1.0));
		return _b = bb;
	}
	
	public var b(null, set_b):Float;
	
	private function set_g(gg:Float):Float 
	{
		_g = Std.int(255 * B2Math.b2Clamp(gg, 0.0, 1.0));
		return _g = gg;
	}
	
	public var g(null, set_g):Float;
	
	private function set_r(rr:Float):Float 
	{
		
		_r = Std.int(255 * B2Math.b2Clamp(rr, 0.0, 1.0));
		return _r = rr;
	}
	
	public var r(null, set_r):Float;
	
	function get_color():Int 
	{
		return (cast(_r, Int)) | (cast(_g, Int) << 8) | (cast(_b, Int) << 16);
	}
	
	public var color(get_color, null):Int;
	
	public function new(rr:Float, gg:Float, bb:Float){
		_r = Std.int(255 * B2Math.b2Clamp(rr, 0.0, 1.0));
		_g = Std.int(255 * B2Math.b2Clamp(gg, 0.0, 1.0));
		_b = Std.int(255 * B2Math.b2Clamp(bb, 0.0, 1.0));
	}
	
	public function Set(rr:Float, gg:Float, bb:Float):Void{
		_r = Std.int(255 * B2Math.b2Clamp(rr, 0.0, 1.0));
		_g = Std.int(255 * B2Math.b2Clamp(gg, 0.0, 1.0));
		_b = Std.int(255 * B2Math.b2Clamp(bb, 0.0, 1.0));
	}
}