var _hover = get_button_hover();
var _click = _hover && mouse_check_button_pressed(mb_left);

//Hover
//hover = lerp(hover, _hover, 0.1);
//y = lerp(y, ystart - _hover * 8, 0.1);//lerp button up


//Click
if (_click && my_script >= 0)
{
	click = true;
	script_execute(my_script);
}