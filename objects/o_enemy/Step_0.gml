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

//Wandering
if(isAttacking == false) {
	if(wander == false) {
		rand_x = random_range(x - 100, x + 100)//Generate random x in the room bounds
		rand_y = random_range(y - 100, y + 100)//Generate random y in the room bounds
		wander = true
	} else if(wander == true) {
		mp_potential_step(rand_x, rand_y, runspd, false)	
	}
	//Give new direction
	if(x == rand_x and y == rand_y) {
		rand_x = random_range(x - 100, x + 100)//Generate random x in the room bounds
		rand_y = random_range(y - 100, y + 100)//Generate random y in the room bounds
		wander = true
	}
}

//Die
if(hp <= 0) {
	instance_destroy(self)	
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


