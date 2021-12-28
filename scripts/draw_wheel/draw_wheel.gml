/// @param x
/// @param y
/// @param radius
/// @param radius-offset
/// @param color
/// @param line_width
/// @param alpha
function draw_wheel(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	// This is a simplified version of draw_wheel_ext

	var xx = argument0
	var yy = argument1
	var r = argument2
	var roff = argument3
	var color = argument4
	var lwid = argument5
	var alpha = argument6

	draw_wheel_ext(xx,yy,r,roff,color,1,1,lwid,0,false,alpha)


}
