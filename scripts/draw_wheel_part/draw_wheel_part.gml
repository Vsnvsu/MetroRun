/// @param x
/// @param y
/// @param radius
/// @param radius-offset
/// @param color
/// @param line_width
/// @param starting_angle
/// @param angle_lenght
/// @param alpha
function draw_wheel_part(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {

	// This scrpit draws an arc

	var xx = argument0
	var yy = argument1
	var r = argument2
	var roff = argument3
	var color = argument4
	var lwid = argument5
	var sang = argument6
	var anglen = argument7
	// alpha argument8

	draw_wheel_ext(x,y,r,roff,color,anglen,360,lwid,sang,false,argument8)


}
