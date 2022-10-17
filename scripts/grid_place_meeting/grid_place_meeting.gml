///arg object
///arg grid
function grid_place_meeting(argument0, argument1){
	var object = argument0;
	var grid = argument1;
	
	var top_right = grid[# (object.bbox_right-1) div CELL_WIDTH, object.bbox_top div CELL_HEIGHT] == VOID
	var top_left = grid[# object.bbox_left div CELL_WIDTH, object.bbox_top div CELL_HEIGHT] == VOID
	var bottom_left = grid[# object.bbox_left div CELL_WIDTH, (object.bbox_bottom-1) div CELL_HEIGHT] == VOID
	var bottom_right = grid[# (object.bbox_right-1) div CELL_WIDTH, (object.bbox_bottom-1) div CELL_HEIGHT] == VOID
}