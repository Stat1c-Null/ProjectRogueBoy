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
draw_text(30, 250, "Ammo: " + string(handgun_ammo) + "/" + string(handgun_max_clip_cap))