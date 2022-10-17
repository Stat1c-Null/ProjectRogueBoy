randomize()

//Create surface for shadows
shadow_surface = noone

//Id of layer where to create tiles
var wall_map_id = layer_tilemap_get_id("WallTiles")

//Set up the grid
width = room_width div CELL_WIDTH
height = room_height div CELL_HEIGHT
grid = ds_grid_create(width, height)
ds_grid_set_region(grid, 0, 0, width - 1, height - 1, VOID)

// Create generation controller
var controller_x = width div 2
var controller_y = height div 2
var controller_direction = irandom(3)
var steps = 400

//Player settings
var player_start_x = controller_x * CELL_WIDTH + CELL_WIDTH/2
var player_start_y = controller_y * CELL_HEIGHT + CELL_HEIGHT/2
instance_create_layer(player_start_x, player_start_y, "Player", o_player)

//Choose direction change odds
var direction_change_odds = 1

//Generate level
repeat (steps) {	
	grid[# controller_x, controller_y] = FLOOR
	
	//Randomize direction of generation
	if(irandom(direction_change_odds) == direction_change_odds) {
		controller_direction = irandom(3)	
	}
	
	//Move the controller
	var x_direction = lengthdir_x(1, controller_direction * 90)
	var y_direction = lengthdir_y(1, controller_direction * 90)
	controller_x += x_direction
	controller_y += y_direction
	
	
}



