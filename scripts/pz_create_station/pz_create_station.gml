// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pz_create_station(x, y, color){
	var t = instance_create_layer(x, y, PuzzleLayer, PuzzleStation)
	t.circle_color = color
}