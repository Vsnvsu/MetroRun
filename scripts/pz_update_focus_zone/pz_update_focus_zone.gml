#macro pz_focus_all 1 // Фокус на все точки сразу
#macro pz_focus_current 2 // Фокус на текущую точку курьера
#macro pz_focus_next 3 // Фокус на текущую и возможные следующие точки курьера

// Вычисление фокус-зоны камеры для набора станций
function pz_update_focus_zone(focus_type){
	var targets = []
	switch (focus_type) {
		case pz_focus_all:
			targets = instance_get_all(PuzzleStation)
		break;
		case pz_focus_current:
			array_push(targets, pz_stations[? PuzzleGame.courier_current])
		break;
		case pz_focus_next:
			var cc = pz_stations[? PuzzleGame.courier_current]
			array_push(targets, cc)
			for (var k = ds_map_find_first(cc.connections); !is_undefined(k); k = ds_map_find_next(cc.connections, k)) {
				var v = cc.connections[? k];
				for (var ii = 0; ii < array_length(v); ii++) {
					array_push(targets, pz_stations[? v[ii]])
				}
			}
		break;
	}
	return pz_calculate_focus_zone(targets)
}

// Вычисление фокус-зоны камеры для набора станций
function pz_calculate_focus_zone(stations) {
	a = {
		x1: stations[0].x,
		x2: stations[0].x,
		y1: stations[0].y,
		y2: stations[0].y,
	}

	// Границы вычисляются как наименьшие и наибольшие значения координат в зоне
	foreach(stations as (station) {
		a.x1 = min(a.x1, station.x)
		a.x2 = max(a.x2, station.x)
		a.y1 = min(a.y1, station.y)
		a.y2 = max(a.y2, station.y)
	});
	
	var bounding = 80; // Отступ от определенных границ до края фокус-зоны
	a.x1 -= bounding
	a.y1 -= bounding
	a.x2 += bounding
	a.y2 += bounding
	
	// Фокус-точка в которую надо направить камеру
	a.fx = (a.x1 + a.x2) / 2
	a.fy = (a.y1 + a.y2) / 2
	
	return a
}