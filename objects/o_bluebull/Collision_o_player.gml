if(global.energy < global.maxenergy) {
	global.energy += energy_restore
	if (global.energy > global.maxenergy) {
		global.energy = global.maxenergy	
	}
	instance_destroy(self)
}

if(o_player.handgun_current_ammo < o_player.handgun_max_ammo) {
	o_player.handgun_current_ammo += ammo_restore
	if(o_player.handgun_current_ammo > o_player.handgun_max_ammo) {
		o_player.handgun_current_ammo = o_player.handgun_max_ammo
	}
	instance_destroy(self)
}