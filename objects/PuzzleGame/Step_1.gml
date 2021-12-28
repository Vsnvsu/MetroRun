// Установка камеры в на фокус-зону

// Масштаб камеры
cam_scale = lerp(cam_scale, max (
(camera_focus.x2 - camera_focus.x1) /  WindowControl.screen_w, 
(camera_focus.y2 - camera_focus.y1) /  WindowControl.screen_h, 
), .05)
cam_scale = max(0.5, cam_scale)
camera_set_view_size(view_camera[0], WindowControl.screen_w * cam_scale, WindowControl.screen_h * cam_scale)

// Позиция камеры
cam_x = lerp(cam_x, camera_focus.fx - camera_get_view_width(view_camera[0]) / 2, .05)
cam_y = lerp(cam_y, camera_focus.fy - camera_get_view_height(view_camera[0]) / 2, .05)
camera_set_view_pos(view_camera[0], cam_x, cam_y)
