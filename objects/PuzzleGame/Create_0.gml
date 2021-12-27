// Слой для всех объектов игрового процесса
globalvar PuzzleLayer;
PuzzleLayer = layer_get_id("Objects")

// Тест - массив станций забивается вручную
station_list = [
	{x: 40, y: 300, c: BasicColors[1]},
	{x: 390, y: 320, c: BasicColors[0]},
	{x: 140, y: 400, c: BasicColors[1]},
	{x: 80, y: 10, c: BasicColors[0]},
]

// Создание в игровой области экземпляров станций по массиву станций
foreach(station_list as (station) {
	pz_create_station(station.x, station.y, station.c)
});

// Временно первичная инициализация фокус-зоны
camera_focus = pz_update_focus_zone(instance_get_all(PuzzleStation))
cam_x = camera_focus.fx - camera_get_view_width(view_camera[0]) / 2
cam_y = camera_focus.fy - camera_get_view_height(view_camera[0]) / 2
cam_scale = 1