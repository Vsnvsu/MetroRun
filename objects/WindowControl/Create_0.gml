//Индев версия или готовый билд
indev = !((os_type == os_android) || (os_type == os_ios))

//Включаем сглаживание
window_apply_aa()

// Сглаживание draw_circle
// https://docs.yoyogames.com/source/dadiospice/002_reference/drawing/drawing%20basic%20forms/draw_set_circle_precision.html
draw_set_circle_precision(32)

// Ставим цвет задника
layer_background_blend(layer_get_back_id("Back"), Colors_Background)

//Включаем камеру
camera_apply(view_camera[0])

if (indev) {
	//Дефолтный размер экрана
	screen_w = 480
	screen_h = 853
} else {
	//Сразу подстраиваем под экран
	screen_w = display_get_width()
	screen_h = display_get_height()
}

window_size_update(screen_w, screen_h)