// Твик для визуального увеличения точек-станций при сильном отдалении
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
	draw_circle_color(x, y, (circle_size + circle_width) * other.dscale, Colors_Background, Colors_Background, false)
	
	var tt = array_length(colors)
	var ts = 360 / tt
	for (var irs = 0; irs < tt; irs ++) {
		draw_wheel_part(x, y, circle_size * other.dscale, (circle_size - circle_width) * other.dscale, colors[irs], 1, ts*(irs + 0.5), ts, 1)
	}
	
	//draw_circle_color(x, y, circle_size * other.dscale, circle_color, circle_color, false)
	//draw_circle_color(x, y, (circle_size - circle_width) * other.dscale, Colors_Background, Colors_Background, false)
}
