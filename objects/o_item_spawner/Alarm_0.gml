var xpos = random_range(0, xrange)
var ypos = random_range(0, yrange)
instance_create_layer(xpos,ypos,"Objects", o_bluebull)
show_debug_message("SpawnedItem")
spawnItem = false