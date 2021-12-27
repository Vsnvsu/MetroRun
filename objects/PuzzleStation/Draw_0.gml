// Твик для визуального увеличения точек-станций при сильном отдалении
var dscale = sqrt(PuzzleGame.cam_scale)

// В палитру заносится насыщенный цвет, дефолтный неактивный цвет нужно увести в цвет фона
var dcolor = merge_color(circle_color, Colors_Background, .8)

draw_circle_color(x, y, circle_size * dscale, dcolor, dcolor, false)
draw_circle_color(x, y, (circle_size - circle_width) * dscale, Colors_Background, Colors_Background, false)