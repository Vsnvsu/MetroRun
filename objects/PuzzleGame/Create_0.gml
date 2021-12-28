// Тест - массивы станций и путей забиваются вручную.
// Потом этот блок заменится на загрузку структуры пазла из файла
station_list = [
	{x: 0, y: 100, id: "A1"},
	{x: 200, y: 100, id: "A2"},
	{x: 200, y: 400, id: "A3"},
	{x: 200, y: -100, id:"B1"},
	{x: 0, y: 300, id:"B2"},
	{x: 0, y: 0, id:"Z"},
]

path_list = [
	{path: ["A1", "A2", "A3"], color: BasicColors[0], id: "T1"},
	{path: ["B1", "A2", "B2"], color: BasicColors[1], id: "T2"},
	{path: ["Z", "A1", "B2", "A3"], color: BasicColors[2], id: "T3"},
]

// Слой для всех объектов игрового процесса
globalvar PuzzleLayer;
PuzzleLayer = layer_get_id("Objects")

// ds_map для станций с ключами равными их id
globalvar pz_stations;
pz_stations = ds_map_create()

// Создание в игровой области экземпляров станций по массиву станций
foreach(station_list as (station) {
	pz_create_station(station.x, station.y, station.id)
});

// Применение переменных путей к станциям
foreach(path_list as (path) {
	for (var ir = 0; ir < array_length(path.path); ir++) {
		var tt = pz_stations[? path.path[ir]];
		array_push(tt.colors, path.color)
		tt.connections[? path.id] = []
		if (ir!=0) {
			array_push(tt.connections[? path.id], path.path[ir - 1])
		}
		if (ir!= array_length(path.path)-1) {
			array_push(tt.connections[? path.id], path.path[ir + 1])
		}
	}
});

// Временно первичная инициализация фокус-зоны
camera_focus = pz_update_focus_zone(instance_get_all(PuzzleStation))
cam_x = camera_focus.fx - camera_get_view_width(view_camera[0]) / 2
cam_y = camera_focus.fy - camera_get_view_height(view_camera[0]) / 2
cam_scale = 1