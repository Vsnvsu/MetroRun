with (PuzzleStation) {
	if (point_distance(x, y, mouse_x, mouse_y) < circle_size * other.dscale) {
		other.courier_current = cid
		other.courier_path = [other.courier_current]
	}
}