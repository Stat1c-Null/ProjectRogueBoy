if(!surface_exists(shadow_surface)) {
	//Create shadow in needed spots
	shadow_surface = surface_create(room_width, room_height)
	surface_set_target(shadow_surface)
	draw_clear_alpha(c_black, 0)
	
	for (var _y = 1; _y < height-1; _y++) {
		for (var _x = 1; _x < width-1; _x++) {
			if (grid[# _x, _y] == FLOOR and grid[# _x, _y-1] == VOID) {
				draw_sprite_ext(s_shadow, 0, _x*CELL_WIDTH, _y*CELL_HEIGHT, 1, 1, 0, c_white, .5)
			}
		}	
	}
	surface_reset_target()
	show_debug_message("Surface created")
}

draw_surface(shadow_surface, 0, 0)