switch(indev) {
	// Если индев версия, то нужно под размеры окна подстраивать размеры
	// рабочего сюрфейса
	case true:
		if (
			(screen_w != window_get_width()) || 
			(screen_h != window_get_height())
		) {
			screen_w = window_get_width()
			screen_h = window_get_height()
			window_size_update(screen_w, screen_h)
		}
	break;
	// Если рабочий билд, изменение размеров окна происходит при изменении
	// размеров экрана. Например, при повороте экрана или режим окна в окне.
	case false:
		if (
			(screen_w != display_get_width()) || 
			(screen_h != display_get_height())
		) {
			screen_w = display_get_width()
			screen_h = display_get_height()
			window_size_update(screen_w, screen_h)
		}
	break;
}
