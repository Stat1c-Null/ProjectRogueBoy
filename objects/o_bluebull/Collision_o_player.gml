if(global.energy < global.maxenergy) {
	global.energy += energy_restore
	if (global.energy > global.maxenergy) {
		global.energy = global.maxenergy	
	}
	instance_destroy(self)
}