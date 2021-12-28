function pz_create_station(x, y, id){
	var tt = instance_create_layer(x, y, PuzzleLayer, PuzzleStation)
	ds_map_add(pz_stations, id, tt)
	tt.cid = id
}