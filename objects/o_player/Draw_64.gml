/// @description HUD
//Health
draw_sprite(s_healthBack, 1, 120, 80)
draw_sprite_ext(s_healthFront, 1, 60, 80, max(0, global.health/global.maxhealth), 1, 0, c_white, 1)
//Energy UI
draw_sprite_ext(s_energyFront, 1, 48, 180, max(0, global.energy/global.maxenergy), 1, 0, c_white, 1)
draw_sprite(s_energyBack, 1, 120, 153)
//Draw Ammo
draw_set_color(c_aqua)
draw_set_font(f_text)
draw_text(1650, 80, "Clip: " + string(round(handgun_ammo)) + "/" + string(round(handgun_max_clip_cap)))
draw_text(1650, 180, "HAmmo: " + string(round(handgun_current_ammo)) + "/" + string(round(handgun_max_ammo)))