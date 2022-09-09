/// @description ENEMY LOGIC

var distToPlayer = distance_to_object(o_player)
attackPlayer = (distToPlayer <= followRange)
//Attack
if(instance_exists(o_player)) {
	if(attackPlayer or isAttacking) {
		isAttacking = true
		image_index = 1
		mp_potential_step(o_player.x, o_player.y, runspd, false)
	}
}

//Collision with the box
if(place_meeting(x + runspd, y, o_box)) {
	while(not place_meeting(x + sign(runspd), y, o_box))
	{
		x += sign(runspd)	
	}
	runspd = 0
}

if(place_meeting(x, y + runspd, o_box)) {
	while(not place_meeting(x, y + sign(runspd), o_box))
	{
		y += sign(runspd)	
	}
	runspd = 0
}