
var x_spawn = random_range(x, x + sprite_width)
var y_spawn = random_range(y, y + sprite_height)
instance_create_layer(x_spawn, y_spawn , "Objects", o_enemy)

alarm[0] = timer * room_speed