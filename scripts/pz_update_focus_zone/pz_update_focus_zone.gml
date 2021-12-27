// Вычисление фокус-зоны камеры для набора станций
function pz_update_focus_zone(stations){
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