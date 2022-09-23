/// @description FIRING THE GUN

//Fire the gun
firingdelay -= 1//Delay bullet creation
recoil = max(0, recoil - 1)
if(mouse_check_button(mb_left) and firingdelay < 0 and handgun_ammo > 0)
{
	recoil = 4	
	firingdelay = 10
	//Create bullet
	with(instance_create_layer(x,y,"Bullets", o_bullet))
	{
		other.handgun_ammo -= 1
		speed = 25
		direction = point_direction(x, y, mouse_x, mouse_y) + random_range(-3, 3)
	}
}
//Move gun backwards with recoil
x = x - lengthdir_x(recoil, image_angle)
y = y - lengthdir_y(recoil, image_angle)

//Reloading
var ammo_restore = handgun_max_clip_cap - handgun_ammo
if(keyboard_check_pressed(ord("R")) and handgun_ammo < handgun_max_clip_cap and handgun_current_ammo - ammo_restore >= 0) {
	handgun_current_ammo -= ammo_restore
	handgun_ammo += ammo_restore
} else if(keyboard_check_pressed(ord("R")) and handgun_ammo < handgun_max_clip_cap and handgun_current_ammo < ammo_restore and handgun_current_ammo > 0) {
	var last_bullets = ammo_restore - handgun_current_ammo
	handgun_ammo += ammo_restore - last_bullets
	handgun_current_ammo = 0
}