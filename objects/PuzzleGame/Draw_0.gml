// Твик для визуального увеличения элементов при сильном отдалении
dscale = sqrt(cam_scale)

// Рисуем пути
foreach(path_list as (path) {
	for (var ir = 0; ir < array_length(path.path) - 1; ir++) {
		var f = pz_stations[? path.path[ir]];
		var t = pz_stations[? path.path[ir + 1]];
		
		draw_line_width_color(f.x, f.y, t.x, t.y, 10, path.color, path.color)
	}
});

// Рисуем станции
with (PuzzleStation) {
	//draw_circle_color(x, y, (circle_size + circle_width) * other.dscale, Colors_Background, Colors_Background, false)
	
	
	draw_circle_color(x, y, (circle_size + outline_width + 5) * other.dscale, Colors_Background, Colors_Background, false)
	draw_circle_color(x, y, (circle_size + outline_width) * other.dscale, Colors_Outline, Colors_Outline, false)
	
	var tt = array_length(colors)
	var ts = 360 / tt
	for (var irs = 0; irs < tt; irs ++) {
		draw_wheel_part(x, y, circle_size * other.dscale, 0, colors[irs], 1, ts*(irs + 0.5), ts, 1)
	}
	
	draw_circle_color(x, y, (circle_size - circle_width) * other.dscale, Colors_Outline, Colors_Outline, false)
	draw_circle_color(x, y, (circle_size - circle_width - outline_width) * other.dscale, Colors_Background, Colors_Background, false)
	
	// Тест - отрисовка id станции
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	//draw_text(x, y, cid)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_set_color(c_white)
}

// Рисуем потенциальные точки курьера
var cp = pz_stations[? courier_current]
for (var k = ds_map_find_first(cp.connections); !is_undefined(k); k = ds_map_find_next(cp.connections, k)) {
	var v = cp.connections[? k];
	for (var ii = 0; ii < array_length(v); ii++) {
		var pp = pz_stations[? v[ii]]
		draw_wheel(pp.x, pp.y, (pp.circle_size + 10) * dscale, (pp.circle_size + 5) * dscale, Colors_Active, 1, 1)
	}
}

// Рисуем путь курьера
foreach(courier_path as (pp) {
	var pv = pz_stations[? pp]
	draw_circle_color(pv.x, pv.y, 10 * dscale, Colors_Active, Colors_Active, false)
	draw_circle_color(pv.x, pv.y, 5 * dscale, Colors_Background, Colors_Background, false)
});