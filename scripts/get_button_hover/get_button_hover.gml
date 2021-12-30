function get_button_hover()
{
	//Get mouse cords inside GUI layer.
	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);

	//If mouse is inside the button area.
	return point_in_rectangle(_mouseX, _mouseY, x, y, x + width, y + height);

}