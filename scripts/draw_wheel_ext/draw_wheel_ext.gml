/// @param x
/// @param y
/// @param radius
/// @param radius-offset
/// @param color
/// @param value
/// @param maxvalue
/// @param line_width
/// @param starting_angle
/// @param clockwise
/// @param alpha
function draw_wheel_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {

	// This script should be used to BE the progress bar(circle).

	var xx = argument0
	var yy = argument1
	var r = argument2
	var roff = argument3
	var color = argument4
	var val = argument5
	var maxval = argument6
	var line_width = argument7
	var ang = argument8//clamp(argument8,0,360)
	var cwise = argument9 // Boolean. Determines wether the bar fills clock or counter clockwise. Logically, the bar will unfill from the opposite chosen way.

	if cwise then ang += 180

	while ang > 360 { ang -= 360 }
	while ang < 0 { ang += 360 }

	var deg = min(360 * (val/maxval),360) // If the value is higher than 360, we'll be drawing more than 1 circle, which would be useless

	var returnalpha = draw_get_alpha()
	draw_set_alpha(argument10)
	// This for loop is responsible for drawing the lines that make the circle
	if !cwise {
		for (var i= ang;i < (deg + ang);i++) {
			draw_line_width_color(xx + lengthdir_x(roff,i),yy + lengthdir_y(roff,i),xx + lengthdir_x(r,i),yy + lengthdir_y(r,i),line_width,color,color)
		}
	}
	if cwise {
		for (var i= -1*ang;i > -1*(deg+ang);i--) {
			draw_line_width_color(xx + lengthdir_x(roff,i),yy + lengthdir_y(roff,i),xx + lengthdir_x(r,i),yy + lengthdir_y(r,i),line_width,color,color)
		}
	}
	draw_set_alpha(returnalpha)


}
