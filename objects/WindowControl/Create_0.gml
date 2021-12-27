//Индев версия или готовый билд
indev = !((os_type == os_android) || (os_type == os_ios))

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
