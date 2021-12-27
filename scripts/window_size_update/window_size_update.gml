function window_size_update(w, h){
	window_set_size(w, h);
	surface_resize(application_surface, w, h);
	view_wport[0] = w
	view_hport[0] = h
}