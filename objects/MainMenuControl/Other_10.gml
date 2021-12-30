/// @description Create UI

//Button Size
var _width = 300;
var _height = 100;
var _padding = 40;

//Get the center X position for the buttons from the screen size.
var center_pos_X = (WindowControl.screen_w - _width) / 2;
//Create button
create_button(center_pos_X, _padding, _width, _height, "Play", on_click); // Do not include () for on_click func. Passed in as argm.
create_button(center_pos_X, _padding + _height + _padding, _width, _height, "Test", on_click);
create_button(center_pos_X, _padding + (_height + _padding) * 2, _width, _height, "Quit", on_click);