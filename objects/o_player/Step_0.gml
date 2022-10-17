/// @description 
//Input
var hor, ver;
var key_dash = keyboard_check_pressed(vk_shift)
//hor = (keyboard_check(ord("D")) || keyboard_check(vk_right))-(keyboard_check(ord("A")) || keyboard_check(vk_left));
//ver = (keyboard_check(ord("S")) || keyboard_check(vk_down))-(keyboard_check(ord("W")) || keyboard_check(vk_up));

hor = (keyboard_check(ord("D"))) - (keyboard_check(ord("A")));
ver = (keyboard_check(ord("S"))) - (keyboard_check(ord("W")));

//Make sure player doesnt walk in dashing
if (hor != 0 || ver != 0 and isDashing == false){
	hsp = hor*moveSpeed;
	vsp = ver*moveSpeed;
} else if (keyboard_check_released(ord("D")) || keyboard_check_released(ord("A")) || keyboard_check_released(ord("S")) || keyboard_check_released(ord("W"))){
	hsp = 0
	vsp = 0
}
//Player Animation
//AnimationController()

//Jump
if (keyboard_check_pressed(vk_space)){
	if (jump_current > 0){//Dont let player jump if he already jumped twice
		zsp = -jumpSpeed;
		jump_current -= 1
	}
}

//Gravity
if (zsp<10){
	zsp += gravSpeed;
}

//Collisions
if (place_meeting_3d(x+hsp, y, z, o_box)){
    hsp = 0;
}

if (place_meeting_3d(x, y+vsp, z, o_box)){
    vsp = 0;
}

//Z Collisions with the Box
if (place_meeting_3d(x, y, z+zsp, o_box)){
    zsp = 0;
	jump_current = jumps //If player is on top of the box, reset their amount of jumps
} else {
	//In the air
	if (keyboard_check_pressed(vk_space)){//Double Jump
		if(jump_current > 0){
			zsp -= jumpSpeed
			jump_current -= 1
		}
	}
}
//Take energy if player out of jumps
//Z Floor
if (z+zsp > floorZ){
	zsp = 0;
	z = floorZ;
	jump_current = jumps //If player is on the floor, reset their amount of jumps
}  else {
	//In the air
	if (keyboard_check_pressed(vk_space)){//Double Jump
		if(jump_current > 0){
			zsp -= jumpSpeed
			jump_current -= 1
		}
	}
}

x += hsp
y += vsp;
z += zsp;


//Damage player
//if(place_meeting(x,y, o_damage_block) and global.health > 0) {
 //   global.health -= 0.5
//}

if(global.health < global.maxhealth) {
    global.health += 0.3
}

//Deal damage during enemy collision
if(place_meeting(x, y, o_enemy)) {
	global.health -= 1 
}

//Kill the player
if(global.health <= 0){
	room_restart()
}

//Turn player sprite after mouse
var degree = point_direction(x,y, mouse_x, mouse_y)

if(degree > 0 and degree < 55) {
	image_index = 3
} else if(degree > 55 and degree < 100) {
	image_index = 4
} else if(degree > 100 and degree < 145) {
	image_index = 5
} else if(degree > 145 and degree < 190) {
	image_index = 6
} else if(degree > 190 and degree < 235) {
	image_index = 7
} else if(degree > 235 and degree < 280) {
	image_index = 0
} else if(degree > 280 and degree < 325) {
	image_index = 1
} else if(degree > 325 and degree < 360) {
	image_index = 2
} else {
	image_index = 0
}



//show_debug_message(degree)